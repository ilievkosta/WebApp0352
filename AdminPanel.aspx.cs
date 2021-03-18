using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp0352
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
           string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
           
            string query = "INSERT INTO TableNews (Article,Content) VALUES (@Article,@Content)";
            using (SqlConnection connection = new SqlConnection(connectionString))
          
            using (SqlCommand command = new SqlCommand(query, connection))
            {
              

                string Article = TextBoxArticle.Text;
                string Content = TextBoxContent.Text;
                command.Parameters.Add("@Article", SqlDbType.NChar).Value = Article;
                command.Parameters.Add("@Content", SqlDbType.NChar).Value = Content;

                connection.Open();
                command.ExecuteNonQuery();
                Response.Redirect("Priem.aspx");
            }
        }
    }
}