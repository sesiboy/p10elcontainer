import 'package:flutter/material.dart';

void main() => runApp(MiContainer());

class MiContainer extends StatelessWidget {
  const MiContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //quitar chingadera debug
        home: Scaffold(
          appBar: AppBar(
            title: Text("jireh container "),
            titleTextStyle: TextStyle(color: Color(0xff000000), fontSize: 40),
            centerTitle: true, //centro lo de arribita
            backgroundColor: Color(0xbca80d34), //poner la barra
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Primer contenedor
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Color de fondo
                    borderRadius:
                        BorderRadius.circular(20), // Esquinas redondeadas
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.5), // Color de la sombra
                        spreadRadius: 5, // Extensión de la sombra
                        blurRadius: 7, // Difuminado de la sombra
                        offset: Offset(0, 3), // Desplazamiento de la sombra
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Contenedor 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20), // Espacio entre los contenedores
              ],
            ),
          ),
        ));
  } //fin widget
} //finclase mi contenedor app
