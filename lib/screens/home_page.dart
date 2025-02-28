import 'package:flutter/material.dart';
import 'package:repaso_provider/widgets/preview_juego.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Column(children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Text(
                  textAlign: TextAlign.center,
                  "COMPRA AQUÍ TUS VIDEOJUEGOS AL MEJOR PRECIO",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Times New Roman",
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    GestureDetector(
                      child: PreviewJuego(),
                      onTap: () =>
                          Navigator.pushNamed(context, "/productdetail"),
                    ),
                    PreviewJuego(),
                    PreviewJuego(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Row(
                  spacing: 15,
                  children: [
                    Container(
                      width: 180,
                      height: 240,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      width: 180,
                      height: 240,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//consumir JSON
