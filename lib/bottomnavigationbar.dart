// ignore_for_file: override_on_non_overriding_member, must_be_immutable, unused_import, prefer_const_constructors

// import 'dart:html';

import 'package:first_app/first.dart';
import 'package:first_app/image.dart';
import 'package:first_app/sms.dart';
import 'package:first_app/studentmarks.dart';
import 'package:flutter/material.dart';


class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndex1 = 0;
  final screens = [
    FirstPage(),
    studentmarks(),
    ImagePage(),
    Appy(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex1],
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Colors.black,

        selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 25, 17, 17)),
        // backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(
              (currentIndex1 == 0) ? Icons.home : Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(

            icon: Icon(
              (currentIndex1 == 1) ? Icons.play_arrow : Icons.play_arrow,
              color: Colors.black,
            ),
            label: 'Reuslt',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentIndex1 == 2)
                  ? Icons.image
                  : Icons.image,
              color: Colors.black,
            ),
            label: 'Image',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentIndex1 == 3) ? Icons.message : Icons.message,
              color: Colors.black,
            ),
            label: 'SMS',
          ),
        ],
        // ),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex1,
        onTap: (index) {
          setState(() {
            currentIndex1 = index;
          });
        },
      ),
    );
  }
}