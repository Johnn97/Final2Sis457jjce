using System;
using System.Collections.Generic;

namespace Final2Sis457jjce.Models;

public partial class Libro
{
    public int Id { get; set; }

    public long Isbn { get; set; }

    public int Edicion { get; set; }

    public string Titulo { get; set; } = null!;

    public string Resumen { get; set; } = null!;

    public string Editorial { get; set; } = null!;

    public DateTime FechaPublicacion { get; set; }

    public string? UsuarioRegistro { get; set; }

    public DateTime? FechaRegistro { get; set; }

    public bool? RegistroActivo { get; set; }

    public virtual ICollection<AutorLibro> AutorLibros { get; } = new List<AutorLibro>();
}
