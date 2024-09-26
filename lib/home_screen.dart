import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_course_for_beginners/settings.dart';

import 'widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPrint() {
    log("onPrint");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavigationButton(
              title: "Go to Settings",
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //       builder: (context) => const SettingsScreen()),
                // );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
            ),
            const SizedBox(height: 30),
            NavigationButton(
              title: "Back",
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
              },
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text("Text"),
            ),
            const SizedBox(height: 30),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () {},
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text("Material"),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined"),
            ),
            const SizedBox(height: 30),
            InkWell(
              child: const Text("InkWell"),
              onTap: () {},
            ),
            InkWell(
              onTap: () {
                log("InkWell");
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 100,
                color: Colors.green,
                child: const Text("InkWell"),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                log("GestureDetector");
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 100,
                color: Colors.red,
                child: const Text("GestureDetector"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
