using System;
using System.Collections.Generic;

namespace Final2Sis457jjce.Models;

public partial class AutorLibro
{
    public int Id { get; set; }

    public int IdAutor { get; set; }

    public int IdLibro { get; set; }

    public string? UsuarioRegistro { get; set; }

    public DateTime? FechaRegistro { get; set; }

    public bool? RegistroActivo { get; set; }

    public virtual Autor IdAutorNavigation { get; set; } = null!;

    public virtual Libro IdLibroNavigation { get; set; } = null!;
}
