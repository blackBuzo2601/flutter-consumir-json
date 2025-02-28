import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Comprar articulo"),
        leading: Icon(Icons.videogame_asset),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                color: Colors.orange,
                child: Image.asset(
                  "assets/mariokart8banner.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      textAlign: TextAlign.justify,
                      "The legend of zelda: Breath of the wild",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Times New Roman",
                          fontSize: 22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.justify,
                        "Lanzamiento: 2015",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                            fontSize: 16),
                      ),
                      Text(
                        textAlign: TextAlign.justify,
                        "Género: Acción",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.orange,
                child: SingleChildScrollView(
                    child: Text(
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Courier ",
                            fontSize: 16),
                        "The Legend of Zelda: Breath of the Wild es un videojuego de acción y aventura desarrollado por Nintendo y lanzado en 2017 para Nintendo Switch y Wii U. Ambientado en un vasto mundo abierto, sigue a Link, quien despierta tras un siglo de letargo para derrotar a Ganon y salvar Hyrule. El juego ofrece exploración libre, mecánicas de física avanzada y un sistema dinámico de clima y supervivencia. Los jugadores pueden escalar montañas, cocinar, resolver acertijos en santuarios y usar diversas armas en combate. Su innovador diseño redefinió los juegos de mundo abierto y fue galardonado como Juego del Año. Su impacto en la industria sigue siendo enorme.")),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 70,
                color: Colors.green,
              )
            ],
          )),
    );
  }
}
