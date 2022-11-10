using System.ComponentModel.DataAnnotations;

namespace GraphQLHotChocolate.Models
{
#nullable disable warnings
    public class Account
    {
        [Key]
        public int AccountId { get; set; }
        public string AccountEmail { get; set; }
        public string? AccountPassword { get; set; }
        public string? AccountFirstName { get; set; }
        public string? AccountLastName { get; set; }
        public string? AccountPhone { get; set; }
        public DateTime AccountDate { get; set; }
        public bool AccountStatus { get; set; }

    }
}
