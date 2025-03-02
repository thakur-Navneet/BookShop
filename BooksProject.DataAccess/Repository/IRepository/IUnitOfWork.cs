namespace BooksProject.DataAccess.Repository.IRepository
{
    public interface IUnitOfWork
    {
        ICategoryRepository Category { get; }
        ICovertypeRepository Covertype { get; }
        ICompanyRepository Company { get; }
        IAuthorRepository Author { get; }
        IProductRepository Product { get; }
        IApplicationUserRepository ApplicationUser { get; }
        IBlogRepository Blog { get; }
        IShoppingCartRepository ShoppingCart { get; }
        IOrderHeaderRepository OrderHeader { get; }
        IOrderDetailRepository OrderDetail { get; }
        ISupportRepository Support { get; }
        void Save();
    }
}
