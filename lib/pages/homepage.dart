import 'package:dark_light/theme/theme_provider.dart';
import 'package:dark_light/widgets/button.dart';
import 'package:dark_light/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
              Fluttertoast.showToast(
                msg: "Changed theme",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black87,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
