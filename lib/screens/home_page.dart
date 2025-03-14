import 'dart:convert';
import 'package:flutter/material.dart';
// Para cargar el archivo JSON
import 'package:repaso_provider/widgets/preview_juego.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cantidad = 15;

  @override
  Widget build(BuildContext context) {
/*     // Dividir la lista de juegos en dos mitades
    List<dynamic> juegosPrimeraMitad =
        juegos.isNotEmpty ? juegos.sublist(0, (juegos.length / 2).ceil()) : [];
    List<dynamic> juegosSegundaMitad =
        juegos.isNotEmpty ? juegos.sublist((juegos.length / 2).ceil()) : []; */

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ElBuzo Videogames"),
          centerTitle: true,
          leading: Icon(Icons.videogame_asset),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 169, 184, 76),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15),
                // Primer SingleChildScrollView horizontal para la primera mitad
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(spacing: 10, children: [
                    GestureDetector(
                      child: PreviewJuego(),
                      onTap: () => Navigator.pushNamed(
                        context,
                        "/productdetail",
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 20),
                // Segundo SingleChildScrollView horizontal para la segunda mitad
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(spacing: 10, children: [
                    GestureDetector(
                      child: PreviewJuego(),
                      onTap: () => Navigator.pushNamed(
                        context,
                        "/productdetail",
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
