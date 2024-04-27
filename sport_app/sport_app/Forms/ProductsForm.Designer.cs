namespace sport_app.Forms
{
    partial class ProductsForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProductsForm));
            this.dgvProducts = new System.Windows.Forms.DataGridView();
            this.cmbbxCategory = new System.Windows.Forms.ComboBox();
            this.cmbbxProvider = new System.Windows.Forms.ComboBox();
            this.cmbbxManufacter = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.tbSearch = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btnBack = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProducts)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvProducts
            // 
            this.dgvProducts.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvProducts.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dgvProducts.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.dgvProducts.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProducts.Location = new System.Drawing.Point(13, 63);
            this.dgvProducts.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dgvProducts.Name = "dgvProducts";
            this.dgvProducts.RowHeadersWidth = 51;
            this.dgvProducts.Size = new System.Drawing.Size(1805, 520);
            this.dgvProducts.TabIndex = 0;
            // 
            // cmbbxCategory
            // 
            this.cmbbxCategory.FormattingEnabled = true;
            this.cmbbxCategory.Items.AddRange(new object[] {
            "Все категории",
            "Спортивный инвентарь",
            "Одежда"});
            this.cmbbxCategory.Location = new System.Drawing.Point(376, 31);
            this.cmbbxCategory.Name = "cmbbxCategory";
            this.cmbbxCategory.Size = new System.Drawing.Size(186, 24);
            this.cmbbxCategory.TabIndex = 1;
            this.cmbbxCategory.SelectedIndexChanged += new System.EventHandler(this.cmbbxCategory_SelectedIndexChanged);
            // 
            // cmbbxProvider
            // 
            this.cmbbxProvider.FormattingEnabled = true;
            this.cmbbxProvider.Items.AddRange(new object[] {
            "Все поставщики",
            "Спортмастер",
            "Декатлон"});
            this.cmbbxProvider.Location = new System.Drawing.Point(678, 31);
            this.cmbbxProvider.Name = "cmbbxProvider";
            this.cmbbxProvider.Size = new System.Drawing.Size(184, 24);
            this.cmbbxProvider.TabIndex = 2;
            this.cmbbxProvider.SelectedIndexChanged += new System.EventHandler(this.cmbbxProvider_SelectedIndexChanged);
            // 
            // cmbbxManufacter
            // 
            this.cmbbxManufacter.FormattingEnabled = true;
            this.cmbbxManufacter.Items.AddRange(new object[] {
            "Все производители",
            "Abtoys",
            "Atemi",
            "Bradex",
            "Colton",
            "Demix",
            "DFC",
            "Green Hill",
            "Mikasa",
            "Moby Kids",
            "Molten",
            "Nordway",
            "Perfetto Sport",
            "playToday",
            "Ridex",
            "ROMANA Next",
            "Salomon",
            "SKIF",
            "Starfit",
            "X-Match",
            "Совтехстром"});
            this.cmbbxManufacter.Location = new System.Drawing.Point(979, 31);
            this.cmbbxManufacter.Name = "cmbbxManufacter";
            this.cmbbxManufacter.Size = new System.Drawing.Size(235, 24);
            this.cmbbxManufacter.TabIndex = 3;
            this.cmbbxManufacter.SelectedIndexChanged += new System.EventHandler(this.cmbbxManufacter_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(373, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(155, 16);
            this.label1.TabIndex = 4;
            this.label1.Text = "Фильтр по Категориям";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(675, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(158, 16);
            this.label2.TabIndex = 5;
            this.label2.Text = "Фильтр по Поставщику";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(987, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(185, 16);
            this.label3.TabIndex = 6;
            this.label3.Text = "Фильтр по Производителю";
            // 
            // tbSearch
            // 
            this.tbSearch.Location = new System.Drawing.Point(25, 33);
            this.tbSearch.Name = "tbSearch";
            this.tbSearch.Size = new System.Drawing.Size(229, 22);
            this.tbSearch.TabIndex = 7;
            this.tbSearch.TextChanged += new System.EventHandler(this.tbSearch_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(22, 14);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(47, 16);
            this.label4.TabIndex = 8;
            this.label4.Text = "Поиск";
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(25, 606);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(138, 38);
            this.btnBack.TabIndex = 9;
            this.btnBack.Text = "Назад";
            this.btnBack.UseVisualStyleBackColor = true;
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // ProductsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1924, 804);
            this.Controls.Add(this.btnBack);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tbSearch);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmbbxManufacter);
            this.Controls.Add(this.cmbbxProvider);
            this.Controls.Add(this.cmbbxCategory);
            this.Controls.Add(this.dgvProducts);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximumSize = new System.Drawing.Size(2394, 851);
            this.MinimumSize = new System.Drawing.Size(1861, 728);
            this.Name = "ProductsForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Товары";
            this.Load += new System.EventHandler(this.ProductsForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvProducts)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvProducts;
        private System.Windows.Forms.ComboBox cmbbxCategory;
        private System.Windows.Forms.ComboBox cmbbxProvider;
        private System.Windows.Forms.ComboBox cmbbxManufacter;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbSearch;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnBack;
    }
}