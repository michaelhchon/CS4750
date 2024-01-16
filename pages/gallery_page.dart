import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    Color inverseColor = const Color.fromRGBO(80, 110, 150, 1);
    return Scaffold(
      backgroundColor: menuColor,
      appBar: AppBar(
        backgroundColor: menuColor,
        title: const Text(
          "Gallery",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        // Change drawer icon to white
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      // GALLERY PAGE
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                // 1
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k1.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // 2
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k2.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // 3
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k3.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // 4
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k4.png',
                    height: 250,
                  ),
                ),
                SizedBox(height: 24),
                // 5
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/k5.png',
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
        backgroundColor: inverseColor.withOpacity(.9),
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
