using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;

namespace Resume_Website_Project
{
    public partial class Sandbox : System.Web.UI.Page
    {
        public string Username;
        public bool CreateAccount;
        string Passhash;


        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            Panel5.Visible = false;

            if (Session["Username"] == null)
            {
                Session["Username"] = "NotLoggedIn";
                Page.Response.Redirect(Page.Request.Url.ToString(), true);

            }
            if (Session["Username"].ToString() == "CreateAccount")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel4.Visible = true;
            }
            if (Session["Username"].ToString() == "NotLoggedIn")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel4.Visible = false;
            }
            if (Session["Username"].ToString() == "LoggedIn")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel4.Visible = false;
            }
            if (Session["UserName"].ToString() == "DEBUG")
            {
                Panel5.Visible = true;
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel4.Visible = false;
            }




        }


        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Session["UserName"] = "NotLoggedIn";

                string connectionString = null;
                SqlConnection cnn;
                
                connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                cnn = new SqlConnection(connectionString);
                try
                {

                    SqlDataAdapter SQLDA = new SqlDataAdapter("dbo.PasswordCheck", connectionString);
                    DataTable dtPasswordCheck = new DataTable();
                    SQLDA.Fill(dtPasswordCheck);

                    DataRow[] PasswordDR = dtPasswordCheck.Select("Username = '" + TextBox1.Text + "'");

                    // step 1, calculate MD5 hash from input

                    string InputValue = TextBox2.Text.ToString();
                    MD5 EncryptionHash = System.Security.Cryptography.MD5.Create();
                    byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(InputValue);
                    byte[] hash = EncryptionHash.ComputeHash(inputBytes);

                    // step 2, convert byte array to hex string

                    StringBuilder sb = new StringBuilder();

                    for (int i = 0; i < hash.Length; i++)
                    {
                        sb.Append(hash[i].ToString("X2"));
                    }


                    


                    if (PasswordDR.Any())
                    {
                        if (PasswordDR[0].ItemArray[1].ToString() == sb.ToString())
                        {
                            Response.Write("Welcome " + TextBox1.Text + "!");
                            Session["UserName"] = "LoggedIn";

                            
                        
                        }
                        else
                        {
                            Response.Write("Password was incorrect.");
                            Session["UserName"] = "NotLoggedIn";
                        }
                    }
                    else
                    {
                        Response.Write("Username was incorrect.");
                        Session["UserName"] = "NotLoggedIn";
                    }
                    

                }catch
                {
                    Response.Write("Attempt Failed: Unable to connect to SQL database.");
                    Session["UserName"] = "NotLoggedIn";

                }

                
            }
            if (Session["UserName"].ToString() != null)
                {

                    if (Session["Username"].ToString() == "CreateAccount")
                    {
                    Panel4.Visible = true;
                    Panel2.Visible = false;
                    Panel1.Visible = false;
                     }
                    if (Session["UserName"].ToString() == "NotLoggedIn")
                    {
                    Panel4.Visible = false;
                    Panel2.Visible = false;
                    Panel1.Visible = true;
                    }
                
                
               
                }
            if (Session["UserName"].ToString() == null)
            {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = null;
            SqlConnection cnn;

            connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            cnn = new SqlConnection(connectionString);
            try
            {
                SqlCommand InsertNewUser = new SqlCommand("NameOfProcedure", cnn);
                InsertNewUser.CommandType = CommandType.StoredProcedure;

                // md5 password storage

                // step 1, calculate MD5 hash from input

                string InputValue = TextBox4.Text.ToString();
                MD5 EncryptionHash = System.Security.Cryptography.MD5.Create();
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(InputValue);
                byte[] hash = EncryptionHash.ComputeHash(inputBytes);

                // step 2, convert byte array to hex string

                StringBuilder sb = new StringBuilder();

                for (int i = 0; i < hash.Length; i++)
                {
                    sb.Append(hash[i].ToString("X2"));
                }

                //insert username & password into sql db
            }
            catch
            {

            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "CreateAccount";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }


        protected void ButtonNoCreate_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "NotLoggedIn";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            //calculate md5 hash from plaintext password
            
            SqlConnection cnn;
            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            cnn = new SqlConnection(connectionString);
            try
            {
                string InputValue = TextBox4.Text.ToString();
                MD5 EncryptionHash = System.Security.Cryptography.MD5.Create();
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(InputValue);
                byte[] hash = EncryptionHash.ComputeHash(inputBytes);

                // step 2, convert byte array to hex string

                StringBuilder sb = new StringBuilder();

                for (int i = 0; i < hash.Length; i++)
                {
                    sb.Append(hash[i].ToString("X2"));
                    
                }

                Passhash = sb.ToString();
                //insert username & password into sql db


                SqlConnection DefaultConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

                SqlCommand CreateNewAccount = new SqlCommand("CreateNewAccount", DefaultConn);
                CreateNewAccount.CommandType = System.Data.CommandType.StoredProcedure;

                SqlParameter UserName = new SqlParameter("@Username", TextBox3.Text);
                SqlParameter UserPassword = new SqlParameter("@UserPassword", Passhash);


                CreateNewAccount.Parameters.Add(UserName);
                CreateNewAccount.Parameters.Add(UserPassword);


                CreateNewAccount.Connection.Open();
                CreateNewAccount.ExecuteNonQuery();
                CreateNewAccount.Connection.Close();

                
                
                


            }
            catch
            {
                Response.Write("Something went wrong. Please try again later.");
            }

            Session["UserName"] = "NotLoggedIn";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }

        protected void ButtonDEBUG_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "DEBUG";
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

            Panel5.Visible = true;

        }

        //enter both username and password into data table


        //have user log in


    }

}