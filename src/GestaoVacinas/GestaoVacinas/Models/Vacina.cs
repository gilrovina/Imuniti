using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GestaoVacinas.Models {
    [Table("Vacinas")]
    public class Vacina {
        [Key]
        public int Id { get; private set; }

        public string Nome { get; private set; }

        public string Descricao { get; private set; }

        [ScaffoldColumn(false)]
        public int? IdadeEmMeses { get; private set; }

        [Display(Name = "Data recomendada de aplicação")]
        [DataType(DataType.Date)]
        public DateTime? DataRecomendada { get; private set; }

        [ScaffoldColumn(false)]
        public bool IsVacinaPadrao { get; private set; }

        public ICollection<DetalhesVacina> Detalhes { get; set; } = new List<DetalhesVacina>();

        public Vacina(int id, string nome, string descricao, int? idadeEmMeses, bool isVacinaPadrao) {
            Id = id;
            Nome = nome;
            Descricao = descricao;
            IdadeEmMeses = idadeEmMeses;
            IsVacinaPadrao = isVacinaPadrao;
        }

        public void CalcularDataRecomendada(DateTime dataNascimento) {
            if (IdadeEmMeses.HasValue) {
                DataRecomendada = dataNascimento.AddMonths(IdadeEmMeses.Value);
            }
        }

        public void AlterarDataManual(DateTime? novaData) {
            if (!DataRecomendada.HasValue) {
                DataRecomendada = novaData;
            } else {
                throw new InvalidOperationException("A data de aplicação recomendada não pode ser alterada.");
            }
        }
    }
}