import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinebooks_flutter/screen/inicio.dart';
import 'package:onlinebooks_flutter/screen/login.dart';
// import 'package:onlinebooks_flutter/layouts/responsive_layout.dart';

// Conexión a base de datos -------------------------------------------
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://rwzhhhyfuxwoiulryvrm.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ3emhoaHlmdXh3b2l1bHJ5dnJtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjAwNjM4OTUsImV4cCI6MjAzNTYzOTg5NX0.Q4IyBzAHIqxVF6eJpkAf4VIW4PbCC1VOPFnhBBrwkng',
  );
  runApp(MyApp());
}
// --------------------------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'On-linebooks',
      home: Inicio(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Inicio()),
        GetPage(name: '/login', page: () => Login()),
      ],
      // Para quitar la etiqueta de la esquina de Debug
      debugShowCheckedModeBanner: false,
      // El material 3 tiene cambios diferentes por defecto, como el redondeo del floatingActionButton y esquinas rectas del Drawer
      theme: ThemeData(useMaterial3: true),
    );
  }
}
