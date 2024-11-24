using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using GestaoVacinas.Data;
using GestaoVacinas.Models;

namespace GestaoVacinas.Controllers {
    public class CadernetasController : Controller {
        private readonly AppDbContext _context;

        public CadernetasController(AppDbContext context) {
            _context = context;
        }

        // GET: Cadernetas
        public async Task<IActionResult> Index() {
            var appDbContext = _context.Cadernetas.Include(c => c.Membro);
            return View(await appDbContext.ToListAsync());
        }

        // GET: Cadernetas/Details/5
        public async Task<IActionResult> Details(int? id) {
            if (id == null) {
                return NotFound();
            }

            var caderneta = await _context.Cadernetas
                .Include(c => c.Membro)
                .Include(c => c.Vacinas)
                    .ThenInclude(v => v.Detalhes)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (caderneta == null) {
                return NotFound();
            }

            ViewBag.VacinasPadrao = await _context.Vacinas
                .Where(v => v.IsVacinaPadrao)
                .Include(v => v.Detalhes)
                .ToListAsync();

            ViewBag.VacinasDisponiveis = await _context.Vacinas
                .Where(v => !v.IsVacinaPadrao)
                .Include(v => v.Detalhes)
                .ToListAsync();

            ViewBag.DetalhesVacinasComplementares = await _context.DetalhesVacinas
                .Include(d => d.Vacina)
                .Where(d => d.CadernetaId == id && !d.Vacina.IsVacinaPadrao)
                .ToListAsync();

            return View(caderneta);
        }

        // GET: Cadernetas/Create
        public IActionResult Create() {
            ViewData["MembroId"] = new SelectList(_context.Membros, "Id", "Apelido");
            return View();
        }

        // POST: Cadernetas/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,MembroId")] Caderneta caderneta) {
            if (ModelState.IsValid) {
                _context.Add(caderneta);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["MembroId"] = new SelectList(_context.Membros, "Id", "Apelido", caderneta.MembroId);
            return View(caderneta);
        }

        // GET: Cadernetas/Edit/5
        public async Task<IActionResult> Edit(int? id) {
            if (id == null) {
                return NotFound();
            }

            var caderneta = await _context.Cadernetas.FindAsync(id);
            if (caderneta == null) {
                return NotFound();
            }
            ViewData["MembroId"] = new SelectList(_context.Membros, "Id", "Apelido", caderneta.MembroId);
            return View(caderneta);
        }

        // POST: Cadernetas/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,MembroId")] Caderneta caderneta) {
            if (id != caderneta.Id) {
                return NotFound();
            }

            if (ModelState.IsValid) {
                try {
                    _context.Update(caderneta);
                    await _context.SaveChangesAsync();
                } catch (DbUpdateConcurrencyException) {
                    if (!CadernetaExists(caderneta.Id)) {
                        return NotFound();
                    } else {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["MembroId"] = new SelectList(_context.Membros, "Id", "Apelido", caderneta.MembroId);
            return View(caderneta);
        }

        // GET: Cadernetas/Delete/5
        public async Task<IActionResult> Delete(int? id) {
            if (id == null) {
                return NotFound();
            }

            var caderneta = await _context.Cadernetas
                .Include(c => c.Membro)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (caderneta == null) {
                return NotFound();
            }

            return View(caderneta);
        }

        // POST: Cadernetas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id) {
            var caderneta = await _context.Cadernetas.FindAsync(id);
            if (caderneta != null) {
                _context.Cadernetas.Remove(caderneta);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        public async Task<IActionResult> AdicionarVacinaComplementar(int id, int vacinaId) {

            var caderneta = await _context.Cadernetas.FindAsync(id);
            if (caderneta == null) return NotFound("Caderneta não encontrada.");

            var vacina = await _context.Vacinas.FindAsync(vacinaId);
            if (vacina == null || vacina.IsVacinaPadrao)
                return BadRequest("Vacina inválida.");

            var novaDose = new DetalhesVacina {
                CadernetaId = caderneta.Id,
                VacinaId = vacina.Id,
                Status = StatusVacina.Futura
            };

            _context.DetalhesVacinas.Add(novaDose);
            await _context.SaveChangesAsync();

            return RedirectToAction("Details", new { id });
        }

        // Método SalvarDetalhesVacina
        [HttpPost]
        public async Task<IActionResult> SalvarDetalhesVacina(DetalhesVacina modelo) {
            if (!ModelState.IsValid) {
                Console.WriteLine("Erro no ModelState");
                return RedirectToAction("Details", new { id = modelo.CadernetaId });
            }

            var vacina = await _context.Vacinas.FindAsync(modelo.VacinaId);
            var caderneta = await _context.Cadernetas.FindAsync(modelo.CadernetaId);

            if (vacina == null || caderneta == null) {
                Console.WriteLine("Vacina ou Caderneta não encontrada.");
                return RedirectToAction("Details", new { id = modelo.CadernetaId });
            }

            var detalhesVacina = await _context.DetalhesVacinas
                .FirstOrDefaultAsync(d => d.VacinaId == modelo.VacinaId && d.CadernetaId == modelo.CadernetaId);

            if (detalhesVacina != null) {
                detalhesVacina.DataAplicacao = modelo.DataAplicacao;
                detalhesVacina.NomeVacinador = modelo.NomeVacinador;
                detalhesVacina.Lote = modelo.Lote;
                detalhesVacina.DataValidade = modelo.DataValidade;
                detalhesVacina.Cnes = modelo.Cnes;
                detalhesVacina.Observacoes = modelo.Observacoes;
            } else {
                _context.DetalhesVacinas.Add(modelo);
            }

            await _context.SaveChangesAsync();

            return RedirectToAction("Details", new { id = modelo.CadernetaId });
        }

        // **Método CadernetaExists**
        private bool CadernetaExists(int id) {
            return _context.Cadernetas.Any(e => e.Id == id);
        }
    }
}
