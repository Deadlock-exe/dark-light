import 'package:dark_light/pages/homepage.dart';
import 'package:dark_light/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
            theme: Provider.of<ThemeProvider>(context).themeData,
          );
        },
      ),
    ),
  );
}
