using GraphQLHotChocolate.Models;
using HotChocolate.Execution;
using HotChocolate.Subscriptions;

namespace GraphQLHotChocolate.Data.GraphQL
{
    public class Subscription
    {
        [SubscribeAndResolve]        
        public async ValueTask<ISourceStream<Product>> OnProductGet([Service] ITopicEventReceiver eventReceiver,
            CancellationToken cancellationToken)
        {
            return await eventReceiver.SubscribeAsync<string, Product>("ReturnedProduct", cancellationToken);
        }

        [SubscribeAndResolve]
        public async ValueTask<ISourceStream<Product>> OnProductAdd([Service] ITopicEventReceiver eventReceiver,
            CancellationToken cancellationToken)
        {
            return await eventReceiver.SubscribeAsync<string, Product>("AddProduct", cancellationToken);
        }
    }
}
