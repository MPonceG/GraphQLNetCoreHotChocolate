using GraphQLHotChocolate.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLHotChocolate.Data.Repositories
{
    public class OrderDetailRepository
    {
        private readonly StoreDbContext _storeDbContext;

        public OrderDetailRepository(StoreDbContext dbContext)
        {
            _storeDbContext = dbContext;
        }

        public List<OrderDetail> GetAllOrderDetails()
        {
            return _storeDbContext.OrderDetail
                .Include(o => o.Order).ThenInclude(a => a.Account)
                .Include(p => p.Product)                 
                .ToList();
        }
    }
}
