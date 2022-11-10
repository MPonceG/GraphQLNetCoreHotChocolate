using System.ComponentModel.DataAnnotations;

namespace GraphQLHotChocolate.Models
{
    public class Product
    {

        [Key]
        public int? ProductId { get; set; }
        public string? ProductName { get; set; }
        public string? ProductDescription { get; set; }
        public string? ProductSku { get; set; }
        public decimal? ProductPrice { get; set; }
        public DateTime? ProductUpdateDate { get; set; }
        public bool? ProductStatus { get; set; }

    }
}
