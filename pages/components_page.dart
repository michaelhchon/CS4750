import 'package:flutter/material.dart';

class Components extends StatelessWidget {
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Components",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // COMPONENTS PAGE
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: ListView(
            children: [
              // Picture
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'images/parts.png',
                  //width: 275,
                ),
              ),
              SizedBox(height: 24),
              // Layouts
              Container(
                decoration: BoxDecoration(
                  color: menuColor.withOpacity(1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Layouts",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    // Go to home page
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/layouts');
                  },
                ),
              ),
              SizedBox(height: 8),
              // Case
              Container(
                decoration: BoxDecoration(
                  color: menuColor.withOpacity(.95),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Case",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    // Go to home page
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/info');
                  },
                ),
              ),
              SizedBox(height: 8),
              // PCB
              Container(
                decoration: BoxDecoration(
                  color: menuColor.withOpacity(.9),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "PCB",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    // Go to home page
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/info');
                  },
                ),
              ),
              SizedBox(height: 8),
              // Plate
              Container(
                decoration: BoxDecoration(
                  color: menuColor.withOpacity(.85),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Plates",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    // Go to home page
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/plates');
                  },
                ),
              ),
              SizedBox(height: 8),
              // Switches
              Container(
                decoration: BoxDecoration(
                  color: menuColor.withOpacity(.8),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Switches",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    // Go to home page
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/switches');
                  },
                ),
              ),
              SizedBox(height: 8),
              // Stabilizers
              Container(
                decoration: BoxDecoration(
                  color: menuColor.withOpacity(.75),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Stabilizers",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onTap: () {
                    // Go to home page
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/info');
                  },
                ),
              ),
              SizedBox(height: 8),
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
