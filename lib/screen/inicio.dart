import 'package:flutter/material.dart';
import 'package:onlinebooks_flutter/constants/custom_drawer.dart';
import 'package:onlinebooks_flutter/constants/custom_appbar.dart';

// Para crear una pantalla nueva escribir stless
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  // Este metodo se ejecuta cuando carga la app, es la pantalla principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appbarColor: Color.fromRGBO(17, 16, 29, 1),
      ),

      backgroundColor: Color.fromRGBO(228, 233, 247, 1),
      // Drawer es un sidebar desplegable
      drawerScrimColor: Color.fromRGBO(228, 233, 247, 0.253),
      drawer: CustomDrawer(),
    );
  }
}
