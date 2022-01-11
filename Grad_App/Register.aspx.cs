using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Grad_App
{
    public partial class Register : System.Web.UI.Page
    {
        //DB connecting reference
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Register button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (check_user())
            {
                Response.Write("<script>alert('The email already exists. Try again.');</script>");
            }
            else
            {
                new_user_registration();
            }
        }

        //Checking if user exists in DB
        bool check_user()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                //Open connection if its closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_tbl where email='"+TextBox4.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }

        void new_user_registration()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                //Open connection if its closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO user_tbl" +
                    "(email,password,first_name,last_name) values(@email,@password,@first_name,@last_name) ", con);

                //Adding values
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@first_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('You have registered successfully!');</script>");
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

    }
}