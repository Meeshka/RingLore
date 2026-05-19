using System;

namespace VelvetSound.Models
{
    [Serializable]
    public class User
    {
        public int userId { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public string username { get; set; }
        public string pass { get; set; }
        public string city { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string address { get; set; }
        public DateTime birthday { get; set; }

        public string gender { get; set; }
    }
}
