import 'package:flutter/material.dart';
import 'package:navbar/pages/About.dart';
import 'package:navbar/pages/Profile.dart';
import 'package:navbar/pages/files.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Homepage',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
      bottomNavigationBar: navbar(context),
    );
  }

  NavigationBar navbar(BuildContext context) {
    return NavigationBar(
      selectedIndex: 0,
      elevation: 5,
      indicatorColor: Colors.blueAccent,
      height: 50,
      backgroundColor: Colors.white,
      //labelBehavior: null,
      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            {
              // This page
              break;
            }
          case 1:
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
              break;
            }
          case 2:
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Files()));
              break;
            }
          case 3:
            {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
              break;
            }
        }
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        NavigationDestination(icon: Icon(Icons.book), label: "Files"),
        NavigationDestination(icon: Icon(Icons.info), label: "About")
      ],
    );
  }
}
