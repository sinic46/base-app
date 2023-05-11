import 'package:base_app/screens/drawer_menu.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),

      appBar: AppBar(
        title: const Text('Best blank app'),
      ),
      body: const Center(
        child: Text('Wow! What a great application.'),
      ),
    );
  }
}
