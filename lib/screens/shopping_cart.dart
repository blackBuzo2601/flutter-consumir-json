import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: (() => {
                      //Ir a INICIO
                      Navigator.pushNamed(context, "/homepage")
                    }),
                child: Text("Regresar"))));
  }
}
