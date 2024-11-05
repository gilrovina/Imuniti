using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace GestaoVacinas.ViewModels
{
    public class AddMembrosViewModel
    {

        [Display(Name = "Apelido")]
        [StringLength(maximumLength: 30, MinimumLength = 2,
            ErrorMessage = "O apelido deverá conter entre 2 e 30 caracteres.")]
        public string? Apelido { get; set; }

        [Display(Name = "Nome Completo")]
        [StringLength(maximumLength: 50, MinimumLength = 5,
            ErrorMessage = "O nome completo deverá conter entre 5 e 50 caracteres.")]
        public string? NomeCompleto { get; set; }

        [Display(Name = "Data de Nascimento")]
        [DataType(DataType.Date, ErrorMessage = "Data inválida.")]
        [Range(typeof(DateTime), "1900-01-01", "2100-01-01", ErrorMessage = "A data de nascimento deve estar entre 1900 e 2100.")]
        public DateTime? DataNascimento { get; set; }

        [Display(Name = "CPF")]
        [StringLength(11, MinimumLength = 11, ErrorMessage = "O CPF deve ter 11 dígitos.")]
        public string? Cpf { get; set; }

        [Display(Name = "Cartão Nacional de Saúde")]
        [StringLength(15, MinimumLength = 15, ErrorMessage = "O CNS deve ter 15 dígitos.")]
        public string? Cns { get; set; }
    }
}
