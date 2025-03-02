using BooksProject.DataAccess.Data;
using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;

namespace BooksProject.DataAccess.Repository
{
    public class SupportRepository : Repository<Support>, ISupportRepository
    {
        private readonly ApplicationDbContext _context;
        public SupportRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
    }
}
