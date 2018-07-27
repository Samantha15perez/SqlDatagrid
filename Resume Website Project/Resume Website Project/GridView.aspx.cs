using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;

namespace Resume_Website_Project
{
   

    public partial class GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)

            {

            }
        }

        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void ButtonAddRow_Click(object sender, EventArgs e)
        {
            SqlConnection DefaultConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

            SqlCommand AddPerson = new SqlCommand("InsertCustomer", DefaultConn);
            AddPerson.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter CustomerName = new SqlParameter("@Name", TextBoxName.Text);
            SqlParameter CustomerAddress = new SqlParameter("@Address", TextBoxAddress.Text);
            SqlParameter Phone = new SqlParameter("@Phone", TextBoxPhone.Text);
            SqlParameter Email = new SqlParameter("@Email", TextBoxEmail.Text);

            AddPerson.Parameters.Add(CustomerName);
            AddPerson.Parameters.Add(CustomerAddress);
            AddPerson.Parameters.Add(Phone);
            AddPerson.Parameters.Add(Email);

            AddPerson.Connection.Open();
            AddPerson.ExecuteNonQuery();
            AddPerson.Connection.Close();

            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }

        
    
}