﻿namespace Projeto_API.Entities
{
    public class Tarefa
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Descricao { get; set; }
        public string Status {  get; set; }
        public DateTime Data {  get; set; }
    }
}
