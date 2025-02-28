import 'package:flutter/material.dart';

class PreviewJuego extends StatelessWidget {
  final String rutaImagen;
  final String nombreJuego;
  final String anioLanzamiento;
  final String precioMXN;

  const PreviewJuego(
      {required this.rutaImagen,
      required this.nombreJuego,
      required this.anioLanzamiento,
      required this.precioMXN,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 190,
      height: 350,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 190,
            child: Image.asset(
              rutaImagen,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Título: ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  nombreJuego,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  "Año: $anioLanzamiento",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  "Precio: $precioMXN",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
