import 'package:flutter/material.dart';
import 'package:flutter_course_for_beginners/privacy.dart';
import 'package:flutter_course_for_beginners/widgets/custom_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
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
                Navigator.of(context).canPop()
                    ? Navigator.of(context).pop()
                    : null;
              },
            ),
            const SizedBox(height: 50),
            NavigationButton(
              title: "Go to Privacy",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
