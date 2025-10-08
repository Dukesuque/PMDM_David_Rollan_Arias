// ========================================
// 📁 lib/screens/screen1.dart
// ========================================
import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen1 extends StatelessWidget {
Screen1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Info'), backgroundColor: Colors.purple),
    drawer: MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('David Rollan', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text('Repositorio:'),
            Text('https://github.com/Dukesuque/PMDM_David_Rollan_Arias'),
          ],
        ),
      ),
    );
  }
}