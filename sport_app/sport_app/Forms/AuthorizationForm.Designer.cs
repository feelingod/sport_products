namespace sport_app
{
    partial class AuthorizationForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AuthorizationForm));
            this.pnTop = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lbWelcome = new System.Windows.Forms.Label();
            this.tbLogin = new System.Windows.Forms.TextBox();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnLogin = new System.Windows.Forms.Button();
            this.btnGuest = new System.Windows.Forms.LinkLabel();
            this.lbGuest = new System.Windows.Forms.Label();
            this.tbCaptcha = new System.Windows.Forms.TextBox();
            this.btnRefreshCaptcha = new System.Windows.Forms.Button();
            this.lbTimerText = new System.Windows.Forms.Label();
            this.timerMain = new System.Windows.Forms.Timer(this.components);
            this.chkbxMain = new System.Windows.Forms.CheckBox();
            this.pcbxCaptcha = new System.Windows.Forms.PictureBox();
            this.pnTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbxCaptcha)).BeginInit();
            this.SuspendLayout();
            // 
            // pnTop
            // 
            this.pnTop.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.pnTop.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.pnTop.Controls.Add(this.pictureBox1);
            this.pnTop.Controls.Add(this.lbWelcome);
            this.pnTop.Location = new System.Drawing.Point(16, 15);
            this.pnTop.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pnTop.Name = "pnTop";
            this.pnTop.Size = new System.Drawing.Size(747, 220);
            this.pnTop.TabIndex = 0;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::sport_app.Properties.Resources.logo;
            this.pictureBox1.Location = new System.Drawing.Point(15, 9);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(215, 203);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // lbWelcome
            // 
            this.lbWelcome.AutoSize = true;
            this.lbWelcome.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.lbWelcome.Location = new System.Drawing.Point(308, 76);
            this.lbWelcome.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbWelcome.Name = "lbWelcome";
            this.lbWelcome.Size = new System.Drawing.Size(362, 39);
            this.lbWelcome.TabIndex = 0;
            this.lbWelcome.Text = "\"Спортивные товары\"";
            // 
            // tbLogin
            // 
            this.tbLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F);
            this.tbLogin.Location = new System.Drawing.Point(175, 386);
            this.tbLogin.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tbLogin.MaxLength = 50;
            this.tbLogin.Name = "tbLogin";
            this.tbLogin.Size = new System.Drawing.Size(441, 41);
            this.tbLogin.TabIndex = 1;
            // 
            // tbPassword
            // 
            this.tbPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F);
            this.tbPassword.Location = new System.Drawing.Point(175, 508);
            this.tbPassword.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tbPassword.MaxLength = 50;
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.Size = new System.Drawing.Size(441, 41);
            this.tbPassword.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F);
            this.label2.Location = new System.Drawing.Point(199, 347);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 36);
            this.label2.TabIndex = 3;
            this.label2.Text = "Логин";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F);
            this.label3.Location = new System.Drawing.Point(199, 469);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(126, 36);
            this.label3.TabIndex = 4;
            this.label3.Text = "Пароль";
            // 
            // btnLogin
            // 
            this.btnLogin.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.btnLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F);
            this.btnLogin.ForeColor = System.Drawing.Color.White;
            this.btnLogin.Location = new System.Drawing.Point(255, 788);
            this.btnLogin.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(265, 60);
            this.btnLogin.TabIndex = 5;
            this.btnLogin.Text = "Войти";
            this.btnLogin.UseVisualStyleBackColor = false;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // btnGuest
            // 
            this.btnGuest.AutoSize = true;
            this.btnGuest.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.btnGuest.Location = new System.Drawing.Point(301, 910);
            this.btnGuest.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.btnGuest.Name = "btnGuest";
            this.btnGuest.Size = new System.Drawing.Size(160, 25);
            this.btnGuest.TabIndex = 6;
            this.btnGuest.TabStop = true;
            this.btnGuest.Text = "Войти как гость";
            this.btnGuest.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.btnGuest_LinkClicked);
            // 
            // lbGuest
            // 
            this.lbGuest.AutoSize = true;
            this.lbGuest.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.lbGuest.Location = new System.Drawing.Point(280, 885);
            this.lbGuest.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbGuest.Name = "lbGuest";
            this.lbGuest.Size = new System.Drawing.Size(196, 25);
            this.lbGuest.TabIndex = 7;
            this.lbGuest.Text = "У вас нет аккаунта?";
            // 
            // tbCaptcha
            // 
            this.tbCaptcha.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
            this.tbCaptcha.Location = new System.Drawing.Point(273, 693);
            this.tbCaptcha.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tbCaptcha.Multiline = true;
            this.tbCaptcha.Name = "tbCaptcha";
            this.tbCaptcha.Size = new System.Drawing.Size(220, 48);
            this.tbCaptcha.TabIndex = 9;
            // 
            // btnRefreshCaptcha
            // 
            this.btnRefreshCaptcha.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.btnRefreshCaptcha.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.btnRefreshCaptcha.ForeColor = System.Drawing.Color.White;
            this.btnRefreshCaptcha.Location = new System.Drawing.Point(503, 645);
            this.btnRefreshCaptcha.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnRefreshCaptcha.Name = "btnRefreshCaptcha";
            this.btnRefreshCaptcha.Size = new System.Drawing.Size(132, 41);
            this.btnRefreshCaptcha.TabIndex = 10;
            this.btnRefreshCaptcha.Text = "Обновить";
            this.btnRefreshCaptcha.UseVisualStyleBackColor = false;
            this.btnRefreshCaptcha.Click += new System.EventHandler(this.btnRefreshCaptcha_Click);
            // 
            // lbTimerText
            // 
            this.lbTimerText.AutoSize = true;
            this.lbTimerText.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.lbTimerText.Location = new System.Drawing.Point(132, 759);
            this.lbTimerText.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbTimerText.Name = "lbTimerText";
            this.lbTimerText.Size = new System.Drawing.Size(522, 25);
            this.lbTimerText.TabIndex = 11;
            this.lbTimerText.Text = "Прежде чем попытаться войти, подождите 10 секунд";
            // 
            // timerMain
            // 
            this.timerMain.Interval = 1000;
            this.timerMain.Tick += new System.EventHandler(this.timerMain_Tick);
            // 
            // chkbxMain
            // 
            this.chkbxMain.AutoSize = true;
            this.chkbxMain.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.chkbxMain.Location = new System.Drawing.Point(307, 855);
            this.chkbxMain.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.chkbxMain.Name = "chkbxMain";
            this.chkbxMain.Size = new System.Drawing.Size(172, 24);
            this.chkbxMain.TabIndex = 12;
            this.chkbxMain.Text = "Запомнить меня";
            this.chkbxMain.UseVisualStyleBackColor = true;
            // 
            // pcbxCaptcha
            // 
            this.pcbxCaptcha.Location = new System.Drawing.Point(273, 593);
            this.pcbxCaptcha.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pcbxCaptcha.Name = "pcbxCaptcha";
            this.pcbxCaptcha.Size = new System.Drawing.Size(221, 92);
            this.pcbxCaptcha.TabIndex = 8;
            this.pcbxCaptcha.TabStop = false;
            // 
            // AuthorizationForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(776, 927);
            this.Controls.Add(this.chkbxMain);
            this.Controls.Add(this.lbTimerText);
            this.Controls.Add(this.btnRefreshCaptcha);
            this.Controls.Add(this.tbCaptcha);
            this.Controls.Add(this.pcbxCaptcha);
            this.Controls.Add(this.lbGuest);
            this.Controls.Add(this.btnGuest);
            this.Controls.Add(this.btnLogin);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbPassword);
            this.Controls.Add(this.tbLogin);
            this.Controls.Add(this.pnTop);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximumSize = new System.Drawing.Size(794, 974);
            this.MinimumSize = new System.Drawing.Size(394, 481);
            this.Name = "AuthorizationForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Авторизация";
            this.Load += new System.EventHandler(this.AuthorizationForm_Load);
            this.pnTop.ResumeLayout(false);
            this.pnTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbxCaptcha)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel pnTop;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lbWelcome;
        private System.Windows.Forms.TextBox tbLogin;
        private System.Windows.Forms.TextBox tbPassword;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.LinkLabel btnGuest;
        private System.Windows.Forms.Label lbGuest;
        private System.Windows.Forms.PictureBox pcbxCaptcha;
        private System.Windows.Forms.TextBox tbCaptcha;
        private System.Windows.Forms.Button btnRefreshCaptcha;
        private System.Windows.Forms.Label lbTimerText;
        private System.Windows.Forms.Timer timerMain;
        private System.Windows.Forms.CheckBox chkbxMain;
    }
}

