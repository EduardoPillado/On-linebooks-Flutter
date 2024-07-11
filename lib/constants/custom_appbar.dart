import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  // final String titulo;
  final Color appbarColor;

  const CustomAppbar({
    super.key,
    // required this.titulo,
    required this.appbarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: Text(titulo),
      titleTextStyle:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      centerTitle: true,
      backgroundColor: (appbarColor),
      elevation: 40,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
