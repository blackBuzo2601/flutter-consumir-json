class Juego {
  final String nombre;
  final String anioLanzamiento;
  final String descripcion;
  final String imagen;
  final String precioMXN;
  final String banner;

  Juego({
    required this.nombre,
    required this.anioLanzamiento,
    required this.descripcion,
    required this.imagen,
    required this.precioMXN,
    required this.banner,
  });

  factory Juego.fromJson(Map<String, dynamic> json) {
    return Juego(
      nombre: json['Nombre'],
      anioLanzamiento: json['AñoLanzamiento'],
      descripcion: json['Descripcion'],
      imagen: json['Imagen'],
      banner: json['banner'],
      precioMXN: json['PrecioMXN'],
    );
  }
}
