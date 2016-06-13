using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_button_Click(object sender, EventArgs e)
    {
        VenueLogin();
    }

    protected void VenueLogin()
    {
        LoginServiceReference.LoginServiceClient lsc = new LoginServiceReference.LoginServiceClient();
        int key = lsc.VenueLogin(user_name_textbox.Text, password_textbox.Text);
        if(key != 0)
        {
            Session["VenueKey"] = key;
            result_label.Text = "Welcome";
        } else
        {
            result_label.Text = "Invalid Login";
        }
    }

    protected void register_link_Click(object sender, EventArgs e)
    {

    }
}