using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegisterVenue()
    {
        LoginServiceReference.LoginServiceClient lsc = new LoginServiceReference.LoginServiceClient();
        LoginServiceReference.VenueLite venue = new LoginServiceReference.VenueLite();
        venue.Username = username_textbox.Text;
        venue.Password = password_textbox.Text;
        venue.Name = venue_name_textbox.Text;
        venue.Address = address_textbox.Text;
        venue.City = city_textbox.Text;
        venue.State = state_textbox.Text;
        venue.Zip = zip_textbox.Text;
        venue.Phone = phone_textbox.Text;
        venue.Email = email_textbox.Text;
        venue.WebPage = website_textbox.Text;
        venue.AgeRestriction = 0; // todo: implement real age restriction
        try
        {
            int result = lsc.VenueRegistration(venue);
            if(result == 2)
            {
                Response.Redirect("Login.aspx");
            } else
            {
                result_label.Text = "Registration could not proceed.";
            }
        } catch(Exception ex)
        {
            result_label.Text = ex.Message;
        }
    }

    protected void register_button_Click(object sender, EventArgs e)
    {
        RegisterVenue();
    }
}