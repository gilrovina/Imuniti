using GestaoVacinas.Data;
using GestaoVacinas.Models;
using GestaoVacinas.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace GestaoVacinas.Controllers
{
    public class MembrosController : Controller
    {
        private readonly AppDbContext context;

        public MembrosController(AppDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public  IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Add(AddMembrosViewModel model)
        {
            var membro = new Membros
            {
                Apelido = model.Apelido,
                NomeCompleto = model.NomeCompleto,
                DataNascimento = model.DataNascimento,
                Cpf = model.Cpf,
                Cns = model.Cns
            };


            await context.Membros.AddAsync(membro);
            await context.SaveChangesAsync();

            var caderneta = new Caderneta {
                MembroId = membro.Id
            };

            await context.Cadernetas.AddAsync(caderneta);
            await context.SaveChangesAsync();

            var vacinasPadrao = await context.Vacinas
                .Where(v => v.IsVacinaPadrao)
              .ToListAsync();

            var detalhesVacinas = vacinasPadrao.Select(vacina => new DetalhesVacina {
                CadernetaId = caderneta.Id,
                VacinaId = vacina.Id
            }).ToList();
            await context.DetalhesVacinas.AddRangeAsync(detalhesVacinas);
            foreach(var detalheVacina in detalhesVacinas) {
                Console.WriteLine(detalheVacina);
            }

            await context.SaveChangesAsync();

            return RedirectToAction("List");

			//return View(model);
        }

        [HttpGet]
        public async Task<IActionResult> List()
        {
            var membros = await context.Membros.ToListAsync();


            return View(membros);
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var membro = await context.Membros.FindAsync(id);
            
            if (membro is null)
            {
                return NotFound();
            }


            return View(membro);

        }

        [HttpPost]
        public async Task<IActionResult> Edit(Membros viewModel)
        {
            var membro = await context.Membros.FindAsync(viewModel.Id);
            if (membro is not null)
            {
                membro.Apelido = viewModel.Apelido;
                membro.NomeCompleto = viewModel.NomeCompleto;
                membro.DataNascimento = viewModel.DataNascimento;
                membro.Cpf = viewModel.Cpf;
                membro.Cns = viewModel.Cns;

                await context.SaveChangesAsync();
            }

            return RedirectToAction("List", "Membros");

        }

        public async Task<IActionResult> Delete(Membros viewModel)
        {
            var membro = await context.Membros
                .AsNoTracking()
                .FirstOrDefaultAsync(m => m.Id == viewModel.Id);

            if (membro is not null)
            {
                context.Membros.Attach(viewModel); // Anexa o viewModel ao contexto
                context.Membros.Remove(viewModel); // Remove o viewModel
                await context.SaveChangesAsync();
            }

            return RedirectToAction("List", "Membros");
        }

    }
}
