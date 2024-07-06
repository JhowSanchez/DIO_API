using Microsoft.EntityFrameworkCore;
using Projeto_API.Entities;

namespace Projeto_API.Context
{
    public class TarefaContext : DbContext
    {

        public TarefaContext(DbContextOptions<TarefaContext> options) : base(options) 
        {
            
        }

        public DbSet<Tarefa> Tarefas { get; set; }
    }
}
