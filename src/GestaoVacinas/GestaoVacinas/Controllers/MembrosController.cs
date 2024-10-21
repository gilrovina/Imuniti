using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using GestaoVacinas.Data;
using GestaoVacinas.Models;

namespace GestaoVacinas.Controllers
{
    public class MembrosController : Controller
    {
        private readonly AppDbContext _context;

        public MembrosController(AppDbContext context)
        {
            _context = context;
        }

        // GET: Membros

        public async Task<IActionResult> Index()
        {
            return View(await _context.Membros.ToListAsync());
        }

        // GET: Membros/Details
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var membros = await _context.Membros
                .FirstOrDefaultAsync(m => m.Id == id);
            if (membros == null)
            {
                return NotFound();
            }

            return View(membros);
        }

        // GET: Membros/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Membros/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Apelido,NomeCompleto,DataNascimento,Cpf,Cns")] Membros membros)
        {
            if (ModelState.IsValid)
            {
                _context.Add(membros);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(membros);
        }

        // GET: Membros/Edit
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var membros = await _context.Membros.FindAsync(id);
            if (membros == null)
            {
                return NotFound();
            }
            return View(membros);
        }

        // POST: Membros/Edit
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Apelido,NomeCompleto,DataNascimento,Cpf,Cns")] Membros membros)
        {
            if (id != membros.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(membros);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MembrosExists(membros.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(membros);
        }

        // GET: Membros/Delete
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var membros = await _context.Membros
                .FirstOrDefaultAsync(m => m.Id == id);
            if (membros == null)
            {
                return NotFound();
            }

            return View(membros);
        }

        // POST: Membros/Delete
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var membros = await _context.Membros.FindAsync(id);
            if (membros != null)
            {
                _context.Membros.Remove(membros);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MembrosExists(int id)
        {
            return _context.Membros.Any(e => e.Id == id);
        }
    }
}
