import 'package:coffee_order_app/custom/theme.dart';
import 'package:coffee_order_app/pages/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setLightMode() {
    _themeData = lightTheme;
    notifyListeners();
  }

  setDarkMode() {
    _themeData = darkTheme;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeNotifier(lightTheme),
      child: Consumer<ThemeNotifier>(
        builder: (context, notifier, child) {
          return MaterialApp(
            theme: notifier.getTheme(),
            debugShowCheckedModeBanner: false,
            home:    const MainScreen(),
          );
        },
      ),
    );
  }
}