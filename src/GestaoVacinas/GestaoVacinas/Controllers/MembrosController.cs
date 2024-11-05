using GestaoVacinas.Data;
using GestaoVacinas.Models;
using GestaoVacinas.ViewModels;
using Microsoft.AspNetCore.Mvc;

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


            return View(model);
        }
    }
}
