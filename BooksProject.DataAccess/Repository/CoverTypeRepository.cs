using BooksProject.DataAccess.Data;
using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;

namespace BooksProject.DataAccess.Repository
{
    public class CoverTypeRepository : Repository<CoverType>, ICovertypeRepository
    {
        private readonly ApplicationDbContext _context;
        public CoverTypeRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
    }
}
