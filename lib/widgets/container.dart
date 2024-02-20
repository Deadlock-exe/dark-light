import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final Color? color;
  final Widget? child;
  const MyBox({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(50),
      width: 200,
      height: 200,
      child: child,
    );
  }
}
