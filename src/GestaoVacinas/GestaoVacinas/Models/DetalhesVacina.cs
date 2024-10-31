using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GestaoVacinas.Models {
    [Table("DetalhesVacinas")]
    public class DetalhesVacina {
        [Key]
        public int Id { get; private set; }

        [ForeignKey("Vacina")]
        public int VacinaId { get; set; }
        public Vacina Vacina { get; private set;  }

        [Display(Name = "Data de aplicação")]
        [DataType(DataType.Date)]
        public DateTime? DataAplicacao { get; set; }

        [Display(Name = "Nome do vacinador")]
        public string? NomeVacinador { get; set; }

        [Display(Name = "Lote")]
        public string? Lote { get; set; }

        [Display(Name = "Data de validade")]
        [DataType(DataType.Date)]
        public DateTime? DataValidade { get; set; }

        [Display(Name = "Código do estabelecimento de saúde (CNES)")]
        public string? Cnes { get; set; }

        [Display(Name = "Observações")]
        public string? Observacoes { get; set; }

        [Display(Name = "Status")]
        public string? Status { get; set; }

        public DetalhesVacina(int id, int vacinaId, DateTime? dataAplicacao, string? nomeVacinador, string? lote, DateTime? dataValidade, string? cnes, string? observacoes, string? status) {
            Id = id;
            VacinaId = vacinaId;
            DataAplicacao = dataAplicacao;
            NomeVacinador = nomeVacinador;
            Lote = lote;
            DataValidade = dataValidade;
            Cnes = cnes;
            Observacoes = observacoes;
            Status = status;
        }

        //teste de construtor vazio
        public DetalhesVacina() { }
    }
}