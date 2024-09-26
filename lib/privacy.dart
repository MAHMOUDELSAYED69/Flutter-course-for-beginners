import 'package:flutter/material.dart';
import 'package:flutter_course_for_beginners/home_screen.dart';

import 'widgets/custom_button.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavigationButton(
              title: "back",
              onPressed: () {
                Navigator.popUntil(
                  context,
                  (route) => route.isFirst,
                );
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
