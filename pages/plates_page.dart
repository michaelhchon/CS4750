import 'package:flutter/material.dart';

class Plates extends StatelessWidget {
  const Plates({super.key});

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Plates",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // PLATES PAGE
      // insert picture of plate here
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              // Plate Picture
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'images/p1.png',
                  width: 275,
                ),
              ),
              // Plate Material
              const ListTile(
                title: Text(
                  "Plate Material",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "This component holds the switches in place "
                      "and adds different levels of rigidity to "
                      "the build. The various materials used in "
                      "plates affect the sound of the board as "
                      "well as the stiffness.",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              // Aluminum
              const ListTile(
                title: Text(
                  "Aluminum",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "Density: Medium"
                      "\nSound: Higher-pitched",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              // Brass
              const ListTile(
                title: Text(
                  "Brass",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "Density: High"
                      "\nSound: Higher-pitched ping",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              // Polycarbonate
              const ListTile(
                title: Text(
                  "Polycarbonate (PC)",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "Density: Flexible"
                      "\nSound: Lower-pitched, deep thock",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              // POM
              const ListTile(
                title: Text(
                  "POM",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "Density: Low"
                      "\nSound: Lower-pitched, clack",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              // Half vs Plateless
              const ListTile(
                title: Text(
                  "Half-Plate/Plateless",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "Thickness: None, depends on PCB"
                      "\nSound: Lower-pitched, raw",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              // Other
              const ListTile(
                title: Text(
                  "Other",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  "There are multitudes of other materials "
                      "and variations of the above listed "
                      "plates, but these are the most commonly "
                      "seen ones. ",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
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
