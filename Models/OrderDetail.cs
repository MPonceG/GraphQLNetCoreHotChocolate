using System.ComponentModel.DataAnnotations;

namespace GraphQLHotChocolate.Models
{
#nullable disable warnings
    public class OrderDetail
    {
        [Key]
        public int OrderDetailId { get; set; }
        public decimal OrderDetailPrice { get; set; }
        public string? OrderDetailName { get; set; }
        public int OrderDetailQuantity { get; set; }
        public DateTime OrderDetailDate { get; set; }
        public bool OrderDetailStatus { get; set; }
        public int OrderId { get; set; }
        public Order Order { get; set; }
        public int ProductId { get; set; }
        public Product Product { get; set; }
    }
}
