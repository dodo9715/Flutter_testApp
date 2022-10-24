import 'package:flutter/material.dart';
import 'package:test_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPage();
}

class _RootPage extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bam-Boo"),
      ),
      body: const HomePage(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.category), label: "Katalog"),
          NavigationDestination(
              icon: Icon(Icons.shopping_basket_outlined), label: "Košarica"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profil"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
