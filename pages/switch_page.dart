import 'package:flutter/material.dart';

class Switches extends StatelessWidget {
  const Switches({super.key});

  @override
  Widget build(BuildContext context) {
    Color menuColor = const Color.fromRGBO(30, 45, 60, 1);
    Color inverseColor = const Color.fromRGBO(80, 110, 150, 1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Switches",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // SWITCHES PAGE
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 24),
            // Picture
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/switchinside.png',
                width: 175,
              ),
            ),
            SizedBox(height: 32),
            // Linear
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/red.png',
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 75),
                    child: Text(
                      "Linear",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ListTile(
                title: Text(
                  "Characteristics: Linear switches have a smooth keystroke "
                      "without tactile bumps or audible clicks."
                      "\n\nFeel: Keystrokes are consistent from top to bottom, "
                      "providing a straightforward and uninterrupted typing experience."
                      "\n\nUse Case: Preferred by gamers and typists who value a smooth "
                      "keystroke without tactile feedback.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            // Tactile
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 75),
                    child: Text(
                      "Tactile",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Image.asset(
                    'images/brown.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ListTile(
                title: Text(
                  "Characteristics: Tactile switches provide tactile feedback "
                      "in the form of a noticeable bump during keypress, "
                      "signaling actuation. \n\nFeel: The user feels a "
                      "distinct bump at the actuation point, making it "
                      "easier to register keypresses without bottoming out "
                      "the key.\n\nUse Case: Suitable for users who prefer "
                      "feedback to confirm keypresses, improving typing accuracy.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            // Clicky
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/blue.png',
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 75),
                    child: Text(
                      "Clicky",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ListTile(
                title: Text(
                  "Characteristics: Clicky switches combine tactile feedback "
                      "with an audible click sound during keypress."
                      "\n\nFeel: Users feel the tactile bump, and the switch "
                      "produces a click sound at the actuation point."
                      "\n\nUse Case: Popular among typists who enjoy audible "
                      "feedback for each keypress, providing a satisfying and "
                      "responsive typing experience.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            // Silent
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 75),
                    child: Text(
                      "Silent",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Image.asset(
                    'images/silent.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ListTile(
                title: Text(
                  "Characteristics: Silent switches aim to reduce noise during "
                      "keypress, minimizing the audible feedback."
                      "\n\nFeel: Similar to linear or tactile switches but "
                      "designed to be quieter, making them suitable for "
                      "quiet environments. \n\nUse Case: Ideal for shared or "
                      "noise-sensitive spaces where users want a mechanical "
                      "feel without the loud click associated "
                      "with some switches.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
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