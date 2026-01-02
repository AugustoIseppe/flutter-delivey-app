import 'package:delivery_app_with_backend/auth/login_or_register_page.dart';
import 'package:delivery_app_with_backend/models/restaurant.dart';
import 'package:delivery_app_with_backend/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(create: (_) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(
      context,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeProvider.themeData,
      home: const LoginOrRegisterPage(),
    );
  }
}
