using BooksProject.DataAccess.Data;
using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;

namespace BooksProject.DataAccess.Repository
{
    public class CompanyRepository : Repository<Company>, ICompanyRepository
    {
        private readonly ApplicationDbContext _context;
        public CompanyRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
    }
}