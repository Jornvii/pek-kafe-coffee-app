import 'package:coffee_order_app/custom/theme.dart';
import 'package:coffee_order_app/main.dart';
import 'package:coffee_order_app/pages/AboutUs.dart';
import 'package:coffee_order_app/pages/PolicyPage.dart';
import 'package:coffee_order_app/pages/ProfilePage.dart';
import 'package:coffee_order_app/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isDarkMode = false;
  
  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
    themeNotifier.getTheme() == lightTheme
        ? themeNotifier.setDarkMode()
        : themeNotifier.setLightMode();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.onSurface),
        titleTextStyle: theme.textTheme.headlineSmall?.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        children: [
          Column(
            children: [
              Image.network(
                'https://cdn.bio.link/uploads/profile_pictures/2021-10-05/jXxjMGd03YlgKnrAU6zDQlV78F6tAo1o.png', // Path to your logo
                height: 80.0,
              ),
              const SizedBox(height: 10.0),
              Text(
                'Pek Kafé',
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
          // Menu List
          _buildSettingsTile(
            icon: Icons.person,
            title: 'Profile',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          _buildSettingsTile(
            icon: Icons.nightlight_round,
            title: 'Dark Mode',
            trailing: IconButton(
              icon: Icon(_isDarkMode ? Icons.dark_mode : Icons.light_mode,
                  color: colorScheme.onSurface),
              onPressed: () => _toggleTheme(),
            ),
          ),
          _buildSettingsTile(
            icon: Icons.policy,
            title: 'Policy',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PolicyPage()),
              );
            },
          ),
          _buildSettingsTile(
            icon: Icons.info,
            title: 'About Us',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsPage()),
              );
            },
          ),
          _buildSettingsTile(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Logout'),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                            (Route<dynamic> route) => false,
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    void Function()? onTap,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: colorScheme.outline, 
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: colorScheme.primary),
        title: Text(
          title,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: trailing ??
            Icon(Icons.arrow_forward_ios,
                color: colorScheme.onSurface.withOpacity(0.7), size: 16),
        onTap: onTap,
      ),
    );
  }
}
