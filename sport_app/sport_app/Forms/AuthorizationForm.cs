using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace sport_app
{
    public partial class AuthorizationForm : Form
    {
        private int Seconds = 0;
        private string captchaText = String.Empty;
        public AuthorizationForm()
        {
            InitializeComponent();
        }

        private void timerMain_Tick(object sender, EventArgs e)
        {
            Seconds++;
            if (Seconds == 10)
            {
                timerMain.Stop();
                lbTimerText.Visible = false;
                btnLogin.Enabled = true;
            }
            else
            {
                lbTimerText.Text = $"Прежде чем попытаться войти, подождите {10 - Seconds} секунд";
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {

            /// Проверка на заполненность полей
            if (tbLogin.Text == "" || tbPassword.Text == "")
            {
                MessageBox.Show("Заполните поля логина и пароля данными");
                return;
            }
            

            /// Проверка на правильность ввода капчи (Если есть)
            if (pcbxCaptcha.Visible == true)
            {
                if(captchaText.ToLower() != tbCaptcha.Text.Trim().ToLower())
                {
                    MessageBox.Show("Неправильно введена капча");
                    SetTimer();
                    return;
                }
            }


            using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.ConnectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand("CheckUser", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@login", tbLogin.Text.Trim());
                command.Parameters.AddWithValue("@password", tbPassword.Text.Trim());
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    if(chkbxMain.CheckState == CheckState.Checked)
                    {
                        Properties.Settings.Default.login = tbLogin.Text.Trim();
                        Properties.Settings.Default.password = tbPassword.Text.Trim();

                        Properties.Settings.Default.Save();
                    }
                    Forms.ProductsForm productsForm = new Forms.ProductsForm();
                    this.Hide();
                    productsForm.Show();
                }
                else
                {
                    MessageBox.Show("Неправильный логин или пароль");
                    pcbxCaptcha.Visible = true;
                    tbCaptcha.Visible = true;
                    btnRefreshCaptcha.Visible = true;
                    pcbxCaptcha.Image = CreateCaptcha();
                    SetTimer();
                }
            }
        }

        private void ResetCaptcha()
        {
            pcbxCaptcha.Image = CreateCaptcha();
            tbCaptcha.Text = String.Empty;
        }

        private void SetTimer()
        {
            btnLogin.Enabled = false;
            Seconds = 0;
            timerMain.Start();
            lbTimerText.Visible = true;
            lbTimerText.Text = "Прежде чем попытаться войти, подождите 10 секунд";
        }

        private Bitmap CreateCaptcha()
        {
            Bitmap bitmap = new Bitmap(pcbxCaptcha.Width, pcbxCaptcha.Height);
            Random rnd = new Random();
            captchaText = String.Empty;

            int xPos = rnd.Next(5, pcbxCaptcha.Width - 70);
            int yPos = rnd.Next(5, pcbxCaptcha.Height - 20);

            Graphics g = Graphics.FromImage(bitmap);
            g.Clear(Color.LightGray);

            Brush[] brushes =  {
                Brushes.Blue,
                Brushes.Red,
                Brushes.Purple
            };

            string ALF = "1234567890QWERTYUIOPASDFGHJKLZXCVBNM";

            for (int i = 0; i < 4; i++)
            {
                captchaText += ALF[rnd.Next(ALF.Length)];
            }

            int x;
            for( int i = 0; i<4; i++)
            {
                x = rnd.Next(0, 5);
                if(x%2 == 0)
                {
                    x = i;
                }
                else
                {
                    x -= x * 2;
                }

                g.DrawString(captchaText[i].ToString(),
                    new Font("Arial", 20),
                    brushes[rnd.Next(0, brushes.Length)],
                    new Point(xPos + (i * 15), yPos + (x * 3)));

            }
            g.DrawLine(Pens.Black,
                       new Point(0, 0),
                       new Point(pcbxCaptcha.Width - 1, pcbxCaptcha.Height - 1));
            g.DrawLine(Pens.Black,
                       new Point(0, Height - 1),
                       new Point(pcbxCaptcha.Width - 1, 0));
            for (int i = 0; i < pcbxCaptcha.Width; ++i)
                for (int j = 0; j < pcbxCaptcha.Height; ++j)
                    if (rnd.Next() % 10 == 0)
                        bitmap.SetPixel(i, j, Color.White);


            return bitmap;


        }

        private void AuthorizationForm_Load(object sender, EventArgs e)
        {
            pcbxCaptcha.Visible = false;

            tbCaptcha.Visible = false;

            btnRefreshCaptcha.Visible = false;

            captchaText = String.Empty;

            tbCaptcha.Text = String.Empty;

            if (Properties.Settings.Default.login != "")
            {
                tbLogin.Text = Properties.Settings.Default.login;
                tbPassword.Text = Properties.Settings.Default.password;
            }
        }

        private void btnRefreshCaptcha_Click(object sender, EventArgs e)
        {
            ResetCaptcha();
        }

        private void btnGuest_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Forms.ProductsForm productsForm = new Forms.ProductsForm();
            this.Hide();
            productsForm.Show();
        }
    }
}
