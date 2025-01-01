import 'package:flutter/material.dart';
import 'package:flutter_application_1/notescreen.dart';
import 'package:flutter_application_1/profile.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List pages = [NotScreen(), Profilepage()];
  int SelectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[SelectIndex],
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {
        setState(() {
          SelectIndex=value;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone"),
        BottomNavigationBarItem(icon: Icon(Icons.note), label: "profile")
      ]),
    );
  }
}
