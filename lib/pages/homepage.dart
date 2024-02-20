import 'package:dark_light/theme/theme_provider.dart';
import 'package:dark_light/widgets/button.dart';
import 'package:dark_light/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            onTap: () {
              Provider.of<ThemeProvider>(
                context,
                listen: false,
              ).toggleTheme();
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
