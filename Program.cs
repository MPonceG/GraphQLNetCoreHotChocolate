using GraphQLHotChocolate.Data;
using GraphQLHotChocolate.Data.GraphQL;
using GraphQLHotChocolate.Data.Repositories;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddScoped<OrderRepository, OrderRepository>();
builder.Services.AddScoped<OrderDetailRepository, OrderDetailRepository>();
builder.Services.AddScoped<ProductRepository, ProductRepository>();

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<StoreDbContext>(opt =>
opt.UseSqlServer(builder.Configuration.GetConnectionString("TheStoreDB")));

builder.Services.AddGraphQLServer()
    .AddQueryType<Query>()
    .AddMutationType<Mutation>()
    .AddSubscriptionType<Subscription>()
    .AddInMemorySubscriptions();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.UseWebSockets();
app.MapGraphQL();

app.MapControllers();

app.Run();
