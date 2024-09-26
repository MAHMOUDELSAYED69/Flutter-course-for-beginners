import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          // WidgetStatePropertyAll
          backgroundColor: const WidgetStatePropertyAll(Colors.orange),
          foregroundColor: const WidgetStatePropertyAll(Colors.white),
          elevation: const WidgetStatePropertyAll(15),
          overlayColor: WidgetStatePropertyAll(Colors.red.withOpacity(0.7)),
          fixedSize: const WidgetStatePropertyAll(Size(200, 45)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(width: 2)))),
      child: Text(title),
    );
  }
}
