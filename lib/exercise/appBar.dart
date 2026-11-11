import 'package:flutter/material.dart';



class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // The AppBar is placed in the Scaffold's appBar property
        appBar: AppBar(
          // 1. Leading Widget (Manual override of the automatic back/drawer button)
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {
              // Action to open a drawer or menu
            },
          ),
          
          // 2. Title Widget
          title: const Text('My Flutter App'),
          
          // 3. Actions (Icons on the right side)
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {
                // Search action
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                // Settings action
              },
            ),
          ],
          
          // Styling the AppBar
          backgroundColor: Colors.blue,
          elevation: 4.0, // Adds a drop shadow
        ),
        body: const Center(
          child: Text('AppBar Tutorial'),
        ),
      ),
    );
  }
}