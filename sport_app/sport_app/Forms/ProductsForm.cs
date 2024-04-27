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

namespace sport_app.Forms
{
    public partial class ProductsForm : Form
    {

        Dictionary<int, string> Providers = new Dictionary<int, string>();
        Dictionary<int, string> Manufacters = new Dictionary<int, string>();
        Dictionary<int, string> Categories = new Dictionary<int, string>();


        public ProductsForm()
        {
            InitializeComponent();
        }

        private void ProductsForm_Load(object sender, EventArgs e)
        {
            using(SqlConnection connection = new SqlConnection(Properties.Settings.Default.ConnectionString))
            {
                connection.Open();




                using(SqlCommand command = new SqlCommand("SelectProviders", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Providers.Add(reader.GetInt32(0), reader.GetString(1).Trim());
                    }
                    reader.Close();

                }

                using (SqlCommand command = new SqlCommand("SelectManufacters", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                    }
                    reader.Close();

                }

                using (SqlCommand command = new SqlCommand("SelectCategories", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Categories.Add(reader.GetInt32(0), reader.GetString(1).Trim());
                    }
                    reader.Close();
                }

                
                using (SqlCommand command = new SqlCommand("SelectProducts", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        DataTable dt = new DataTable();
                        dt.Load(reader);
                        dgvProducts.DataSource = dt;
                    }
                }
            }
        }

        private void tbSearch_TextChanged(object sender, EventArgs e)
        {
            ApplyFilters();
        }

        /// <summary>
        /// Универсальная функция для применения фильтров
        /// </summary>
        private void ApplyFilters()
        {
            string searchText = tbSearch.Text.Trim();

            string selectedSupplier = cmbbxProvider.SelectedIndex > 0 ? cmbbxProvider.Text : null;
            string selectedManufacturer = cmbbxManufacter.SelectedIndex > 0 ? cmbbxManufacter.Text : null;
            string selectedCategory = cmbbxCategory.SelectedIndex > 0 ? cmbbxCategory.Text : null;

            DataTable dataTable = (DataTable)dgvProducts.DataSource;
            DataView dataView = dataTable.DefaultView;

            dataView.RowFilter = string.Empty;

            // применение фильтров
            if (!string.IsNullOrEmpty(searchText))
            {
                dataView.RowFilter = string.Format("Наименование LIKE '%{0}%'", searchText);
            }

            if (!string.IsNullOrEmpty(selectedSupplier) && selectedSupplier != "Все поставщики")
            {
                if (dataView.RowFilter.Length > 0)
                {
                    dataView.RowFilter += string.Format(" AND Поставщик = '{0}'", selectedSupplier);
                }
                else
                {
                    dataView.RowFilter += string.Format("Поставщик = '{0}'", selectedSupplier);
                }
            }
            if (!string.IsNullOrEmpty(selectedManufacturer) && selectedManufacturer != "Все производители")
            {
                if (dataView.RowFilter.Length > 0)
                {
                    dataView.RowFilter += string.Format(" AND Производитель = '{0}'", selectedManufacturer);
                }
                else
                {
                    dataView.RowFilter += string.Format("Производитель = '{0}'", selectedManufacturer);
                }
            }

            if (!string.IsNullOrEmpty(selectedCategory) && selectedCategory != "Все категории")
            {
                if (dataView.RowFilter.Length > 0)
                {
                    dataView.RowFilter += string.Format(" AND Категория = '{0}'", selectedCategory);
                }
                else
                {
                    dataView.RowFilter += string.Format("Категория = '{0}'", selectedCategory);
                }
            }

            dgvProducts.Refresh();
        }

        private void cmbbxCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ApplyFilters();
        }

        private void cmbbxProvider_SelectedIndexChanged(object sender, EventArgs e)
        {
            ApplyFilters();
        }

        private void cmbbxManufacter_SelectedIndexChanged(object sender, EventArgs e)
        {
            ApplyFilters();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            Application.OpenForms["AuthorizationForm"].Show();
            this.Close();
        }
    }
}
