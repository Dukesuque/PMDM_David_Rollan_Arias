import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'dukesuque',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.add_box_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      drawer: MiDrawer(),
      body: Column(
        children: [
          // Sección del perfil
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Foto de perfil y estadísticas
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('assets/images/mifoto.jpg'),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStat('0', 'posts'),
                          _buildStat('221', 'followers'),
                          _buildStat('331', 'following'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                
                // Nombre y pronombres
                Row(
                  children: [
                    Text(
                      'DAVID',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'he/him',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                
                // Bio
                Text(
                  'Málaga',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ezequiel 25:17',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                ),
                Text(
                  's 2-e p 7-3 0:0 9',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 10),
                
                // Seguido por
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: AssetImage('assets/images/messipfp.jpg'),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: AssetImage('assets/images/cristianopfp.jpg'),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: AssetImage('assets/images/nikkinicolepfp.jpg'),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Followed by ',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Messi, CR7, Nicki.nicole',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                
                // Botones
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Following', style: TextStyle(color: Colors.white)),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          side: BorderSide(color: Colors.grey[700]!),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Message', style: TextStyle(color: Colors.white)),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          side: BorderSide(color: Colors.grey[700]!),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    OutlinedButton(
                      onPressed: () {},
                      child: Icon(Icons.person_add_outlined, color: Colors.white, size: 20),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        side: BorderSide(color: Colors.grey[700]!),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                
                // Historias destacadas
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildHighlight('ᚺ', 'assets/images/angelcaido.jpg'),
                      _buildHighlight('ᛒ', 'assets/images/amor.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Tabs
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey[800]!)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Icon(Icons.grid_on, color: Colors.white),
                ),
                Expanded(
                  child: Icon(Icons.person_pin_outlined, color: Colors.grey),
                ),
              ],
            ),
          ),
          
          // Grid de fotos
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                Image.asset('assets/images/parispfp.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/rocking.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/sevilla.jpg', fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(label, style: TextStyle(fontSize: 13, color: Colors.white)),
      ],
    );
  }

  Widget _buildHighlight(String title, String imagePath) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey[700]!, width: 2),
            ),
            child: ClipOval(
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 12, color: Colors.white)),
        ],
      ),
    );
  }
}