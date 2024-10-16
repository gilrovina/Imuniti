using System.ComponentModel.DataAnnotations;

namespace GestaoVacinas.ViewModels
{
    public class RegisterViewModel
    {
        [Required(ErrorMessage = "É obrigatório informar um Email")]
        [EmailAddress(ErrorMessage = "Email inválido")]
        public string Email { get; set; }

        [Required(ErrorMessage = "É obrigatório informar uma Senha")]
        [StringLength(40, MinimumLength = 8, ErrorMessage = "A senha deve conter no mínimo 8 caracteres e no máximo 40")]
        [DataType(DataType.Password)]
        [Compare("ConfirmPassword", ErrorMessage = "As senhas fornecidas não são idênticas")]
        public string Password { get; set; }

        [Required(ErrorMessage = "É obrigatório confirmar a Senha")]
        [DataType(DataType.Password)]
        [Display(Name = "Confirmar Senha")]
        public string ConfirmPassword { get; set; }

    }
}
