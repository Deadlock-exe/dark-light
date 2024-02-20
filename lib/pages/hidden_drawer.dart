import 'package:dark_light/pages/homepage.dart';
import 'package:dark_light/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "HOME",
          baseStyle: const TextStyle(),
          selectedStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          colorLineSelected: Colors.black,
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "PROFILE",
          baseStyle: const TextStyle(),
          selectedStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          colorLineSelected: Colors.black,
        ),
        const ProfilePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Theme.of(context).colorScheme.secondary,
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorAppBar: Theme.of(context).colorScheme.primary,
      slidePercent: 32,
    );
  }
}
