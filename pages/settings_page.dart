import 'package:flutter/material.dart';

class Counter {
  // Linear and Tactile counter
  static int linearCount = 0;
  static int tactileCount = 0;

  static void incrementLinear() {
    linearCount++;
  }
  static void incrementTactile() {
    tactileCount++;
  }
  static int getLinear() {
    return linearCount;
  }
  static int getTactile() {
    return tactileCount;
  }
  static void resetCount() {
    linearCount = 0;
    tactileCount = 0;
  }
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    Color inverseColor = const Color.fromRGBO(80, 110, 150, 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // SETTINGS PAGE
      body: Center(
        child: Container(
          child: Column(
            children: [
              // Linear Count
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 40, left: 40),
                  child: Text(
                    "Linear Count:                     ${Counter.getLinear()}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // insert counter
              ),
              // Tactile Count
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 40, left: 40),
                  child: Text(
                    "Tactile Count                     ${Counter.getTactile()}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // insert counter
              ),
              // Reset
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 40, left: 40),
                  child: Text(
                    "Reset",
                      style: TextStyle(fontSize: 20),
                  ),
                ),
                onTap: () {
                  Counter.resetCount();
                  setState(() {});
                },
              ),
              SizedBox(height: 115*3),
              // Box
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: menuColor.withOpacity(.9),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'vers. 1.0.0',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'takeone, mhc',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
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
