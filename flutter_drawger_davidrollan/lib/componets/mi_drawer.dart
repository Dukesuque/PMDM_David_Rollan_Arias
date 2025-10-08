import 'package:flutter/material.dart';
import '../screens/screen1.dart';
import '../screens/screen2.dart';
import '../screens/screen3.dart';
import '../screens/screen4.dart';
import '../screens/screen5.dart';

class MiDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
            ListTile(
              title: Text('Info', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => Screen1()));
              },
            ),
            ListTile(
              title: Text('Foto', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => Screen2()));
              },
            ),
            ListTile(
              title: Text('Miniaturas', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => Screen3()));
              },
            ),
            ListTile(
              title: Text('Iconos', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => Screen4()));
              },
            ),
            ListTile(
              title: Text('Imagenes', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => Screen5()));
              },
            ),
          ],
        ),
      ),
    );
  }
}