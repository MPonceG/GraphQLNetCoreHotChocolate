using System.ComponentModel.DataAnnotations;

namespace GraphQLHotChocolate.Models
{
#nullable disable warnings
    public class Order
    {
        [Key]
        public int OrderId { get; set; }
        public decimal OrderAmount { get; set; }
        public string? OrderShipName { get; set; }
        public string? OrderShipAddress { get; set; }
        public string? OrderEmail { get; set; }
        public DateTime OrderDate { get; set; }
        public bool OrderStatus { get; set; }
        public int AccountId { get; set; }
        public Account Account { get; set; }
        public List<OrderDetail> orderDetails { get; set; }

    }
}
