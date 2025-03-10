import 'package:flutter/material.dart';
import 'package:projet1ds3/ecommerce/screens/home_page.dart';
import 'package:projet1ds3/ecommerce/screens/llist_produit.dart';
import 'package:projet1ds3/ecommerce/screens/panier.dart';
import 'package:projet1ds3/ecommerce/screens/user_profile.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  int selectedIndex = 0;
  List<Widget> mesPAges = [
    const HomeScreen(),
    const ListProduitScreen(),
    const PanierScreen(),
    const UserProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mesPAges[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[300],
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), label: "List Produit"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Panier"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profile"),
        ],
      ),
    );
  }
}
