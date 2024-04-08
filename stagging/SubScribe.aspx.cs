using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SubScribe : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=166.62.100.102;Initial Catalog=admin_tes; user=tes;password=da7~L1v5;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       SqlCommand cmd = new SqlCommand ("insert into sub (name,last_name,email_id) values ('" + TextBox1.Text + "', '" + TextBox2.Text + "' ,'" +TextBox3.Text + "')", conn);

        cmd.CommandType = CommandType.Text;

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            Button1.Text = "Thank you";
            conn.Close();



        }

        catch(Exception ex)
        {
            Button1.Text = ex.Message;
        }

       // string file_name = "j://ac/heena.txt";
       // StreamWriter sw = new StreamWriter(file_name);
       // sw.Write(TextBox1.Text);
       // sw.Write(TextBox2.Text);
       // sw.Write(TextBox3.Text);
       // sw.Close();
       

     
    }
}