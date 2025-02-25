using BooksProject.DataAccess.Data;
using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;

namespace BooksProject.DataAccess.Repository
{
    public class ApplicationUserRepository : Repository<ApplicationUser>, IApplicationUserRepository
    {
        private readonly ApplicationDbContext _context;
        public ApplicationUserRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
    }
}
