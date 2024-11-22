using GestaoVacinas.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Microsoft.AspNetCore.Authorization;
using GestaoVacinas.Data;
using Microsoft.EntityFrameworkCore;

namespace GestaoVacinas.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly AppDbContext _context;

        public HomeController(ILogger<HomeController> logger, AppDbContext context) {
            _logger = logger;
            _context = context;
        }

        public async Task<IActionResult> Index() {
            // Carrega a lista de membros com suas cadernetas
            var membros = await _context.Membros
                .Include(m => m.Caderneta) // Inclui a caderneta associada ao membro
                .ToListAsync();

            // Passa a lista de membros para a View
            ViewBag.Membros = membros;

            return View();
        }

        [Authorize]
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
