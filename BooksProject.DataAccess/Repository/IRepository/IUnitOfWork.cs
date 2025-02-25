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
        void Save();
    }
}
