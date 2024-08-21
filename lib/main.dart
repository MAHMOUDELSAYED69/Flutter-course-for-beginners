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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff212832),
        appBar: AppBar(
          backgroundColor: Color(0xff212832),
          foregroundColor: Color(0xffFFFFFF),
          leading: const Icon(Icons.arrow_back),
          title: const Text("Create New Task"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Task Title",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              _buildContentCard("Hi-Fi Wireframe"),
              SizedBox(height: 30),
              Text(
                "Task Details",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              _buildContentCard(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  fontSize: 12),
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  "Add team members",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildAddMemberCard("Robert"),
                  SizedBox(width: 9),
                  _buildAddMemberCard("Sophia"),
                  SizedBox(width: 9),
                  Container(
                    color: Color(0xffFED36A),
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.add_box_outlined,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  "Time & Date",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDateAndTimeCard(
                        title: "10:30 AM", icon: Icons.access_time),
                    SizedBox(width: 6),
                    _buildDateAndTimeCard(
                        title: "15/11/2022", icon: Icons.calendar_month)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "Add New",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                width: double.infinity,
                color: Color(0xffFED36A),
                child: Text(
                  "Create",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentCard(String title, {double? fontSize}) => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        color: Color(0xff455A64),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize ?? 20,
          ),
        ),
      );

  Widget _buildAddMemberCard([String? title]) => Expanded(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Color(0xff455A64),
          child: Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Color(0xffFED36A),
                child: Icon(
                  Icons.person,
                  size: 15,
                ),
              ),
              SizedBox(width: 5),
              Text(
                title ?? "Empty",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Spacer(),
              Icon(
                Icons.cancel_presentation_rounded,
                size: 20,
                color: Colors.white,
              )
            ],
          ),
        ),
      );
}

Widget _buildDateAndTimeCard({required String title, required IconData icon}) =>
    Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color(0xffFED36A),
            padding: EdgeInsets.all(8),
            child: Icon(icon),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Color(0xff455A64),
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );

// Widgets can be => visible vs  invisible

// FontWeight => w100 => w900 // normal => w400 // bold => w700

// const => Text("hello World!") x20

// MaterialApp => material design

// Pascal case => [classes] => MyApp

// Camel case => [variables] [functions] =>  userDataInfo , getUserData(){};

// Snake case => files folders => home_screen

// SizedBox => width, height, child => widget

// Icon => IconData => Icons.person , size, color

// AppBar => leading, title, actions

// Padding widget
