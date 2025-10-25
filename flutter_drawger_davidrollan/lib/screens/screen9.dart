import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge'),
        backgroundColor: Colors.purple,
        actions: [
          Icon(Icons.battery_full),
          SizedBox(width: 10),
          Icon(Icons.signal_cellular_4_bar),
          SizedBox(width: 10),
          Icon(Icons.wifi),
          SizedBox(width: 10),
        ],
      ),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange.shade700,
                  width: 8,
                ),
              ),
              child: Center(
                child: Text(
                  'H',
                  style: TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}