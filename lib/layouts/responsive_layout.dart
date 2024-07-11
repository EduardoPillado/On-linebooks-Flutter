// Dependiendo del tamaño de la pantalla, este archivo decide que tamaño tomar
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget telefono;
  final Widget tablet;
  final Widget escritorio;

  const ResponsiveLayout({
    super.key,
    required this.telefono,
    required this.tablet,
    required this.escritorio,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        // Retornar pantalla movil
        return telefono;
      } else if (constraints.maxWidth < 960) {
        // Retornar pantalla tablet
        return tablet;
      } else {
        // Retornar pantalla escritorio
        return escritorio;
      }
    });
  }
}
