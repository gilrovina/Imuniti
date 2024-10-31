using GestaoVacinas.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace GestaoVacinas.Data;
public class AppDbContext : IdentityDbContext<Users> {
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) {
    }
    public DbSet<Membros> Membros { get; set; }
    public DbSet<Vacina> Vacina { get; set; }
    public DbSet<DetalhesVacina> DetalhesVacinas { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder) {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<DetalhesVacina>()
            .HasOne(detalheVacina => detalheVacina.Vacina)
            .WithMany(vacina => vacina.Detalhes)
            .HasForeignKey(detalheVacina => detalheVacina.VacinaId);

    }
}