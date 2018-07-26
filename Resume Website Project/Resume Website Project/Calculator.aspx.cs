using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorProject
{
    public partial class Calculator : System.Web.UI.Page
    {
        public int variable;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (ViewState["Calculator"] == null)
                {
                    ViewState["Calculator"] = 0;
                }
                TextBox3.Text = ViewState["Calculator"].ToString();
            }
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //add

            int Calc = (int)ViewState["Calculator"] + variable;
            TextBox3.Text = Calc.ToString();
            ViewState["Calculator"] = Calc;
            TextBox4.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //subtraction
            int Calc = (int)ViewState["Calculator"] - variable;
            TextBox3.Text = Calc.ToString();
            ViewState["Calculator"] = Calc;
            TextBox4.Text = "";
        }

       

        protected void Button8_Click(object sender, EventArgs e)
        {
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            variable = int.Parse(TextBox4.Text);
    }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //multiplication
            int Calc = (int)ViewState["Calculator"] * variable;
            TextBox3.Text = Calc.ToString();
            ViewState["Calculator"] = Calc;
            TextBox4.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //division

            if (variable != 0)
            {
                int Calc = (int)ViewState["Calculator"] / variable;
                TextBox3.Text = Calc.ToString();
                ViewState["Calculator"] = Calc;
                TextBox4.Text = "";
            }
            else
            {
                Response.Write("Cannot divide by zero.");
                TextBox4.Text = "";
            }
        }
    }
}