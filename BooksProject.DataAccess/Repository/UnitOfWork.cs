using BooksProject.DataAccess.Data;
using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;

namespace BooksProject.DataAccess.Repository
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _context;
        public UnitOfWork(ApplicationDbContext context)
        {
            _context = context; // Storing the provided context for use in the repositories.
            Category = new CategoryRepository(_context);  // Initializing the Category repository.
            Covertype = new CoverTypeRepository(_context); 
            Company = new CompanyRepository(_context);
            Author = new AuthorRepository(_context);
            Product= new ProductRepository(_context);
            ApplicationUser = new ApplicationUserRepository(_context);
            Blog = new BlogRepository(_context);
            ShoppingCart = new ShoppingCartRepository(_context);
            OrderHeader = new OrderHeaderRepository(_context);
            OrderDetail = new OrderDetailRepository(_context);
            Support = new SupportRepository(_context);
        }

        //public ICategoryRepository Category => throw new NotImplementedException();
        public ICategoryRepository Category { get; private set; }
        public ICovertypeRepository Covertype { get; private set; }
        public ICompanyRepository Company { get; private set; }
        public IAuthorRepository Author { get; private set; }
        public IProductRepository Product { get; private set; }
        public IApplicationUserRepository ApplicationUser { get; private set; }
        public IBlogRepository Blog { get; private set; }
        public IShoppingCartRepository ShoppingCart { get; private set; }
        public IOrderHeaderRepository OrderHeader { get; private set; }
        public IOrderDetailRepository OrderDetail { get; private set; }
        public ISupportRepository Support { get; private set; }

        public void Save()
        {
            _context.SaveChanges();  // Save all changes made to the database context
        }
    }
}
