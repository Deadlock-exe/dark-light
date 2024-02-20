import 'package:dark_light/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 200,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(
              height: 20,
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                Provider.of<ThemeProvider>(
                  context,
                  listen: false,
                ).toggleTheme();
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Change Theme",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
