using BooksProject.DataAccess.Data;
using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;

namespace BooksProject.DataAccess.Repository
{
    public class AuthorRepository : Repository<Author>, IAuthorRepository
    {
        private readonly ApplicationDbContext _context;
        public AuthorRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
    }
}
