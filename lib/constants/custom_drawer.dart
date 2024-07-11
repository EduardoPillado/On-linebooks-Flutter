import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(17, 16, 29, 1),
      width: 304,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100.0,
              child: Center(
                child: Text(
                  'On-linebooks',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Divider(color: Color.fromARGB(255, 214, 214, 214)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Text('INICIO'),
                      textColor: Colors.white,
                      onTap: () {
                        Get.toNamed('/');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.white),
                      title: Text('PERFIL'),
                      textColor: Colors.white,
                      onTap: () {
                        Get.toNamed('/');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person_add, color: Colors.white),
                      title: Text('INICIO DE SESIÓN'),
                      textColor: Colors.white,
                      onTap: () {
                        Get.toNamed('/');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.category, color: Colors.white),
                      title: Text('CATEGORÍAS'),
                      textColor: Colors.white,
                      onTap: () {
                        Get.toNamed('/');
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite_border, color: Colors.white),
                      title: Text('FAVORITOS'),
                      textColor: Colors.white,
                      onTap: () {
                        Get.toNamed('/');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: Color.fromARGB(255, 214, 214, 214)),
            ListTile(
              trailing: Icon(Icons.logout, color: Colors.white),
              title: Text('CERRAR SESIÓN'),
              textColor: Colors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
