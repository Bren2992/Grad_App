using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grad_App
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login button
                    LinkButton2.Visible = true; //register button

                    LinkButton3.Visible = false; //logout button
                    LinkButton7.Visible = false; //Welcome user message

                    LinkButton6.Visible = true; //admin login button
                    LinkButton11.Visible = false; //author management button
                    LinkButton12.Visible = false; //project inventory button
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false; //register button

                    LinkButton3.Visible = true; //logout button
                    LinkButton7.Visible = true; //Welcome user message
                    LinkButton7.Text = "Welcome" + Session["first_name"].ToString();

                    LinkButton6.Visible = true; //admin login button
                    LinkButton11.Visible = false; //author management button
                    LinkButton12.Visible = false; //project inventory button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false; //register button

                    LinkButton3.Visible = true; //logout button
                    LinkButton7.Visible = true; //Welcome user message
                    LinkButton7.Text = "Welcome Admin";

                    LinkButton6.Visible = false; //admin login button
                    LinkButton11.Visible = true; //author management button
                    LinkButton12.Visible = true; //project inventory button
                }
            }
            catch(Exception ex)
            {


            }
           
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Admin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Author_Management_Admin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Project_Inventory.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Projects.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_User.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["first_name"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; //user login button
            LinkButton2.Visible = true; //register button

            LinkButton3.Visible = false; //logout button
            LinkButton7.Visible = false; //Welcome user message

            LinkButton6.Visible = true; //admin login button
            LinkButton11.Visible = false; //author management button
            LinkButton12.Visible = false; //project inventory button

            Response.Redirect("HomePage.aspx");
        }
    }
}