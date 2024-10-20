using System.ComponentModel.DataAnnotations;

namespace GestaoVacinas.Models
{
    public class Membros
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "O apelido é obrigatório.")]
        public required string Apelido { get; set; }

        [Required(ErrorMessage = "O nome completo é obrigatório.")]
        public required string NomeCompleto { get; set; }

        [Required(ErrorMessage = "A data de nascimento é obrigatória.")]
        public required DateTime DataNascimento { get; set; }

        [Required(ErrorMessage = "O CPF é obrigatório.")]
        [StringLength(11, MinimumLength = 11, ErrorMessage = "O CPF deve ter 11 dígitos.")]
        public required string Cpf { get; set; }

        [StringLength(15, MinimumLength = 15, ErrorMessage = "O CNS deve ter 15 dígitos.")]
        public string? Cns { get; set; }
    }
}
