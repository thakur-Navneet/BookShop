namespace BooksProject.DataAccess.Repository.IRepository
{
    public interface IUnitOfWork
    {
        ICategoryRepository Category { get; }
        ICovertypeRepository Covertype { get; }
        ICompanyRepository Company { get; }
        void Save();
    }
}
