import 'package:flutter/material.dart';

class PreviewJuego extends StatelessWidget {
  final String rutaImagen;
  final String nombreJuego;
  final String anioLanzamiento;
  final String precioMXN;
  final String descripcion;
  final String banner;

  const PreviewJuego(
      {required this.rutaImagen,
      required this.nombreJuego,
      required this.anioLanzamiento,
      required this.precioMXN,
      required this.descripcion,
      required this.banner,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: 190,
      height: 350,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 190,
              child: Image.asset(
                rutaImagen,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombreJuego,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Año: $anioLanzamiento",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Precio: \$ $precioMXN",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700], // Color del precio actualizado
                      fontWeight: FontWeight.bold, // Negritas como el título
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
