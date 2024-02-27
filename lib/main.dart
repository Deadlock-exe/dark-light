import 'package:dark_light/pages/hidden_drawer.dart';
import 'package:dark_light/theme/theme_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      builder: ((context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ThemeProvider>(context).themeData,
            home: const HiddenDrawer(),
          )),
      maximumSize: const Size(400, 500),
      enabled: kIsWeb,
    );
  }
}
