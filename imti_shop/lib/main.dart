import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'providers/cart_provider.dart';
import 'providers/fav_provider.dart';
import 'providers/theme_provider.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/cart_page.dart';
import 'pages/fav_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  bool isDarkMode = prefs.getBool('isDarkMode') ?? false;

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => FavProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider(isDarkMode)),
    ],
    child: SmartShopApp(initialRoute: isLoggedIn ? '/home' : '/login'),
  ));
}

class SmartShopApp extends StatelessWidget {
  final String initialRoute;
  const SmartShopApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Shop',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        initialRoute: initialRoute,
        routes: {
          '/login': (_) => LoginPage(),
          '/home': (_) => HomePage(),
          '/cart': (_) => CartPage(),
          '/favourites': (_) => FavPage(),
        },
      ),
    );
  }
}
