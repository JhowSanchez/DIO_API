using Azure.Core;
using Microsoft.AspNetCore.Mvc;
using Projeto_API.Context;
using Projeto_API.Entities;

namespace Projeto_API.Controllers
{
    [ApiController]
    [Route("[controller]")]

    public class TarefaController : ControllerBase
    {
        private readonly TarefaContext _context;

        public TarefaController(TarefaContext context)
        {
            _context = context;
        }

        [HttpGet("{id}")]
        public IActionResult ObterPorId(int id)
        {
            var tar = _context.Tarefas.Find(id);
            if(tar == null) 
                return NotFound();
            return Ok(tar);
        }
        [HttpPost]
        public IActionResult Create(Tarefa tarefa)
        {
            var tar = _context.Tarefas.Find(tarefa.Id);

            if( tar != null)
                return BadRequest();
           
            _context.Tarefas.Add(tarefa);
            _context.SaveChanges();
            return Ok(tarefa);
        }
        [HttpPut("{id}")]
        public IActionResult Update(int id, Tarefa tarefa)
        {
            var tar = _context.Tarefas.Find(id);

            if (tar == null)
                return NotFound();

            tar.Titulo = tarefa.Titulo;
            tar.Status = tarefa.Status;
            tar.Descricao = tarefa.Descricao;
            
            _context.Update(tar);
            _context.SaveChanges();

            return Ok(tar); 
        }

        [HttpDelete]
        public IActionResult Delete(int id)
        {
            var tar = _context.Tarefas.Find(id);

            if(tar == null)
                return NotFound();
            _context.Remove(tar);
            _context.SaveChanges();

            return Ok(tar);
        }

        [HttpGet("ObterTodos")]
        public IActionResult ObterTodos()
        {
            var tarefas = _context.Tarefas.ToList();
            return Ok(tarefas);
        }

        [HttpGet("ObterPorStatus")]
        public IActionResult ObterPorStatus(string status)
        {
            var tar = _context.Tarefas.Where(x => x.Status.Contains(status));

            if(tar == null) 
                return NotFound();
            return Ok(tar);
        }
        [HttpGet("ObterPorData")]
        public IActionResult ObterPorData(string date)
        {
            if (DateTime.TryParse(date, out DateTime parsedDate))
            {
                var tarefas = _context.Tarefas
                                      .Where(x => x.Data.Date == parsedDate.Date)
                                      .ToList();

                return Ok(tarefas);
            }
            return BadRequest();
        }
        [HttpGet("ObterPorTitulo")]
        public IActionResult ObterPorTitulo(string titulo)
        {
            var tar = _context.Tarefas.Where(x => x.Titulo.Contains(titulo));

            if (tar == null)
                return NotFound();
            return Ok(tar);
        }
    }
}
