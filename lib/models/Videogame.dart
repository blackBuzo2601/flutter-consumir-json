class Videojuego {
  final String nombre;
  final int anioLanzamiento;
  final String descripcion;
  final String banner;
  final String rutaImagen;
  final String precioMXN;

  Videojuego(
      {required this.banner,
      required this.anioLanzamiento,
      required this.descripcion,
      required this.nombre,
      required this.precioMXN,
      required this.rutaImagen});
}
