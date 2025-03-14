import 'package:flutter/material.dart';
import 'package:repaso_provider/data/models/juego.dart';

class NuevaPagina extends StatefulWidget {
  const NuevaPagina({super.key});

  @override
  State<NuevaPagina> createState() => _NuevaPaginaState();
}

class _NuevaPaginaState extends State<NuevaPagina> {
//lae implica que cuando se inicia la aplicacion
  late Future<List<Juego>> futureJuegos;

  @override
  void initState() {
    super.initState();
    futureJuegos = cargarJuego();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: futureJuegos,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text("Error: ${snapshot.error}"));
              }
              //el hasError es si hay error por ejemplo en la data
              else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text("No hay datos disponibles"));
              } else {
                final juegos = snapshot.data;
                return ListView.builder(
                    itemCount: juegos?.length,
                    itemBuilder: (context, index) {
                      final juego = juegos?[index];
                      return ListTile(
                        title: Text(juego!.nombre),
                        subtitle: Text(juego.descripcion),
                      );
                    });
              }
              //si el estado de conexion está esperando, entonces CircularProgressIndicator.
            }));
  }
}
