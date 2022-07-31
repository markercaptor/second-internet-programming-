using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //To check if the required fields are there
            if (txtFirstName.Text == "" || txtLastName.Text == "" || txtEmail.Text == "" || txtPassword.Text == "" || txtPassword2.Text == "")
            {

                if (txtFirstName.Text == "") lblFirstName.Visible = true;
                else lblFirstName.Visible = false;
                if (txtLastName.Text == "") lblLastName.Visible = true; else lblLastName.Visible = false;
                if (txtEmail.Text == "") lblEmail.Visible = true; else lblEmail.Visible = false;
                if (txtPassword.Text == "") lblPassword.Visible = true; else { lblPassword.Visible = false; }
                if (txtPassword2.Text == "") { lblPassword2.Text = "*This field is required"; lblPassword2.Visible = true; } else lblPassword2.Visible = false;

            }
            //To check if the passwords match
            else if (txtPassword.Text != txtPassword2.Text)
            {
                lblPassword2.Text = "*Passwords do not match";
                lblPassword2.Visible = true;

            }

            else
            {
                Session["FirstName"] = txtFirstName.Text;
                Session["LastName"] = txtLastName.Text;

                lblPassword.Visible = false;
                lblPassword2.Visible = false;

                txtDisplay.Text += txtFirstName.Text + " " + txtLastName.Text + "\n";
                txtDisplay.Text += txtEmail.Text + "\n";
                txtDisplay.Text += lstCountry.SelectedValue + "\n";
                Response.Redirect("/WebForm1.aspx");
            }
        }
    }
}