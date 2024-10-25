using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GestaoVacinas.Models
{

    [Table("Membros")]
    public class Membros
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "O apelido é obrigatório.")]
        public required string Apelido { get; set; }

        [Display(Name = "Nome Completo")]
        [Required(ErrorMessage = "O nome completo é obrigatório.")]
        public required string NomeCompleto { get; set; }

        [Display(Name = "Data de Nascimento")]
        [Required(ErrorMessage = "A data de nascimento é obrigatória.")]
        [DataType(DataType.Date)]

        public required DateTime DataNascimento { get; set; }

        [Display(Name = "CPF")]
        [Required(ErrorMessage = "O CPF é obrigatório.")]
        [StringLength(11, MinimumLength = 11, ErrorMessage = "O CPF deve ter 11 dígitos.")]
        public required string Cpf { get; set; }

        [Display(Name = "Cartão Nacional de Saúde")]
        [StringLength(15, MinimumLength = 15, ErrorMessage = "O CNS deve ter 15 dígitos.")]
        public string? Cns { get; set; }
    }
}