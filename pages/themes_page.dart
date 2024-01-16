import 'package:flutter/material.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    Color inverseColor = const Color.fromRGBO(80, 110, 150, 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Themes",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // THEMES PAGE
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                // BOW
                Text(
                  'Black on White',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/bow.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // WOB
                Text(
                  'White on Black',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/wob.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // Dracula
                Text(
                  'Dracula',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k9.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // Bingsu
                Text(
                  'Bingsu',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k7.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // DMG
                Text(
                  'DMG',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k8.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // 80082
                Text(
                  '80082',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k6.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // MUTED
                Text(
                  'Muted',
                  style: TextStyle(fontSize: 25),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k10.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),


      // PULL OUT MENU
      drawer: Drawer(
        backgroundColor: menuColor.withOpacity(.9),
        child: Column(
          children: [
            // Menu
            const ListTile(
              title: Text(
                "M E N U",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white70,
                ),
              ),// Set the desired font size here
            ),
            // Home
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white70,
              ),
              title: const Text(
                "H O M E",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              onTap: () {
                // Go to home page
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            // Components
            ListTile(
              leading:const Icon(
                Icons.view_list_outlined,
                color: Colors.white70,
              ),
              title: const Text(
                "C O M P O N E N T S",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              onTap:() {
                // Go to components page
                Navigator.pop(context);
                Navigator.pushNamed(context, '/components');
              },
            ),
            // Gallery
            ListTile(
              leading:const Icon(
                Icons.collections,
                color: Colors.white70,
              ),
              title: const Text(
                "G A L L E R Y",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              onTap:() {
                // Go to components page
                Navigator.pop(context);
                Navigator.pushNamed(context, '/gallery');
              },
            ),
            // Themes
            ListTile(
              leading:const Icon(
                Icons.palette,
                color: Colors.white70,
              ),
              title: const Text(
                "T H E M E S",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              onTap:() {
                // Go to components page
                Navigator.pop(context);
                Navigator.pushNamed(context, '/themes');
              },
            ),
            // Settings
            ListTile(
              leading:const Icon(
                Icons.settings,
                color: Colors.white70,
              ),
              title: const Text(
                "S E T T I N G S",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),

              onTap:() {
                // Go to components page
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
