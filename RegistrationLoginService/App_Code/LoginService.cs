using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "LoginService" in code, svc and config file together.
public class LoginService : ILoginService
{
    ShowTrackerEntities ste = new ShowTrackerEntities();

    public int VenueLogin(string username, string password)
    {
        int key = 0;
        int pass = ste.usp_venueLogin(username, password);
        if (pass != -1)
        {
            var ven = from v in ste.VenueLogins
                      where v.VenueLoginUserName.Equals(username)
                      select new { v.VenueKey };
            foreach(var v in ven)
            {
                key = (int)v.VenueKey;
            }
        }
        return key;
    }

    public int VenueRegistration(VenueLite v)
    {
        int worked = ste.usp_RegisterVenue(v.Name, v.Address, v.City, 
            v.State, v.Zip, v.Phone, 
            v.Email, v.WebPage, 0, 
            v.Username, v.Password);
        return worked;
    }
}
