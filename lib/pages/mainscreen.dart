import 'package:coffee_order_app/custom/theme.dart';
import 'package:coffee_order_app/main.dart';
import 'package:coffee_order_app/models/CartItem.dart';
import 'package:coffee_order_app/pages/HomePage.dart';
import 'package:coffee_order_app/pages/Profile_Nav.dart';
import 'package:coffee_order_app/pages/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
    themeNotifier.getTheme() == lightTheme ? themeNotifier.setDarkMode() : themeNotifier.setLightMode();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomeScreen(), 
      CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Consumer<CartModel>(
              builder: (context, cart, child) {
                return Stack(
                  children: [
                    const Icon(Icons.shopping_cart),
                    if (cart.itemCount > 0)
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text(
                            cart.itemCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
