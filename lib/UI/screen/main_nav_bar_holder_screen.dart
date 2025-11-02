import 'package:flutter/material.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: "New",
          ),
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: "progress",
          ),
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: "cancelled",
          ),
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: "completed",
          ),
        ],
      ),
    );
  }
}
