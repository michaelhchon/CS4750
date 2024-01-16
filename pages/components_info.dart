import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    Color inverseColor = const Color.fromRGBO(80, 110, 150, 1);
    return Scaffold(
      backgroundColor: menuColor,
      appBar: AppBar(
        backgroundColor: menuColor,
        title: const Text(
          "Components",
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
      // INFO PAGE
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              // Case
              const ListTile(
                title: Text(
                  "Case",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                subtitle: Text(
                    "This is the external frame of the "
                        "build that houses the internals. "
                        "Common materials include plastic, "
                        "aluminum, and polycarbonate.",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
              SizedBox(height: 32),
              // PCB
              const ListTile(
                title: Text(
                  "PCB",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                subtitle: Text(
                  "The PCB is where switches and stabilizers "
                      "get connected. Many PCBs come in a soldered "
                      "or a hotswap version, where the first is "
                      "soldered in and the latter is capable of "
                      "swapping switches without any soldering tool.",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
              SizedBox(height: 32),
              // Stabilizers
              const ListTile(
                title: Text(
                  "Stabilizers",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                subtitle: Text(
                  "Stabilizers, or stabs, remove the wobble of "
                      "the longer keycaps such as spacebar and enter.",
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
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
