using GraphQLHotChocolate.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLHotChocolate.Data.Repositories
{
    public class ProductRepository
    {
        private readonly StoreDbContext _storeDbContext;
        public ProductRepository(StoreDbContext dbContext)
        {
            _storeDbContext = dbContext;
        }

        public List<Product> GetAllProducts()
        {
            return _storeDbContext.Product.ToList();
        }

        public Product GetProductbyId(int id)
        {
            return _storeDbContext.Product.Where(p => p.ProductId == id).FirstOrDefault();
        }

        public async Task<Product> CreateProduct(Product product)
        {
            product.ProductUpdateDate = DateTime.Now;
            await _storeDbContext.Product.AddAsync(product);
            await _storeDbContext.SaveChangesAsync();
            return product;
        }

        public async Task<Product> UpdateProduct(Product product)
        {
            var updateProduct = _storeDbContext.Product.Find(product.ProductId);
            if (updateProduct != null) 
            {
                updateProduct.ProductName = product.ProductName ?? updateProduct.ProductName;
                updateProduct.ProductDescription = product.ProductDescription ?? updateProduct.ProductDescription;
                updateProduct.ProductSku = product.ProductSku ?? updateProduct.ProductSku;
                updateProduct.ProductPrice = product.ProductPrice ?? updateProduct.ProductPrice;
                updateProduct.ProductUpdateDate = DateTime.Now;
                updateProduct.ProductStatus = product.ProductStatus ?? updateProduct.ProductStatus;
                _storeDbContext.Product.Update(updateProduct);
                await _storeDbContext.SaveChangesAsync();
            }
            
            return updateProduct;
        }

        
    }
}
