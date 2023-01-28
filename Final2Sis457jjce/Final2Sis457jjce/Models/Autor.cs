using System;
using System.Collections.Generic;

namespace Final2Sis457jjce.Models;

public partial class Autor
{
    public int Id { get; set; }

    public string Nombres { get; set; } = null!;

    public string Apellidos { get; set; } = null!;

    public string Nacionalidad { get; set; } = null!;

    public string? UsuarioRegistro { get; set; }

    public DateTime? FechaRegistro { get; set; }

    public bool? RegistroActivo { get; set; }

    public virtual ICollection<AutorLibro> AutorLibros { get; } = new List<AutorLibro>();
}
