import 'package:flutter/material.dart';

class PreviewJuego extends StatelessWidget {
  const PreviewJuego({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 270,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 230,
            child: Image.asset(
              "assets/mariokart8deluxe.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "VER PRODUCTO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Times New Roman",
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
