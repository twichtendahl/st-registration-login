using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ILoginService" in both code and config file together.
[ServiceContract]
public interface ILoginService
{
    [OperationContract]
    int VenueLogin(string username, string password);

    [OperationContract]
    int VenueRegistration(VenueLite v);
}

[DataContract]
public class VenueLite
{
    // Credentials and History
    [DataMember]
    public string Username { get; set; }

    [DataMember]
    public string Password { get; set; }

    [DataMember]
    public DateTime Added { get; set; }

    // Venue details
    [DataMember]
    public string Name { get; set; }

    [DataMember]
    public string Address { get; set; }

    [DataMember]
    public string City { get; set; }

    [DataMember]
    public string State { get; set; }

    [DataMember]
    public string Zip { get; set; }

    [DataMember]
    public string Phone { get; set; }

    [DataMember]
    public string Email { get; set; }

    [DataMember]
    public string WebPage { get; set; }

    [DataMember]
    public string AgeRestriction { get; set; }
}
