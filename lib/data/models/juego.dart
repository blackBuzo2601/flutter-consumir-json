import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<Juego>> cargarJuego() async {
  final String respuesta = await rootBundle.loadString("lib/data/juego.json");
  final Map<String, dynamic> data = jsonDecode(respuesta);

//convertir los datos a una lista
  List<dynamic> juegoJson = data["juegos"];
  List<Juego> juegos = juegoJson.map((juego) => Juego.fromJson(juego)).toList();

  return juegos;
}
//<T> implica que se va a comportar como una clase abstracta

class Juego {
//atributos de la clase Juego
  String nombre;
  String anioLanzamiento;
  String descripcion;
  String imagen;
  String precioMxn;
  String banner;

//constructor
  Juego({
    required this.nombre,
    required this.anioLanzamiento,
    required this.descripcion,
    required this.imagen,
    required this.precioMxn,
    required this.banner,
  });

//metodo para convertir JSON en un objeto(Mapa en dart) Juego
  factory Juego.fromJson(Map<String, dynamic> json) => Juego(
        nombre: json["Nombre"],
        anioLanzamiento: json["anioLanzamiento"],
        descripcion: json["Descripcion"],
        imagen: json["Imagen"],
        precioMxn: json["PrecioMXN"],
        banner: json["banner"],
      );
}
