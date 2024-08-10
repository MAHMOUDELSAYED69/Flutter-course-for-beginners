import 'package:flutter/material.dart';

//TODO:[runApp] [MyApp] [build Method] [MaterialApp] [Scaffold] [Center] [Text] [Container]
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
          //! 1
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 15,
                blurStyle: BlurStyle.normal,
                offset: Offset(-5, 0),
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),

          width: 300,
          height: 200,
          alignment: Alignment.center,
          child: Container(
            //? 2
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.black, width: 2),
              shape: BoxShape.circle,
            ),
            width: double.infinity,
            height: double.infinity,
            child: Text(
              "Hello \nWorld",
              style: TextStyle(
                height: 1.5,
                fontSize: 30,
                color: Colors.green[600],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepOrange,
                decorationThickness: 3,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
          ),
        )),
      ),
    );
  }
}

// Widgets can be => visible vs  invisible

// FontWeight => w100 => w900 // normal => w400 // bold => w700

// const => Text("hello World!") x20

// MaterialApp => material design

// Pascal case => [classes] => MyApp

// Camel case => [variables] [functions] =>  userDataInfo , getUserData(){};

// Snake case => files folders => home_screen
