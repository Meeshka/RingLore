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
        public DateTime birthday { get; set; }

        public int gender { get; set; }
    }
}
