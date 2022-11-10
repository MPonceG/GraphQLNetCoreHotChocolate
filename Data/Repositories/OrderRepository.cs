using GraphQLHotChocolate.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLHotChocolate.Data.Repositories
{
    public class OrderRepository
    {
        private readonly StoreDbContext _storeDbContext;

        public OrderRepository(StoreDbContext dbContext)
        {
            _storeDbContext = dbContext;
        }

        public List<Order> GetAllOrderwithDetails()
        {
            return _storeDbContext.Order
                .Include(a => a.Account)
                .Include(o => o.orderDetails).ThenInclude(p => p.Product)
                .ToList();
        }
    }
}
