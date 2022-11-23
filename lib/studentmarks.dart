// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors, camel_case_types, non_constant_identifier_names, unused_local_variable, no_leading_underscores_for_local_identifiers, prefer_typing_uninitialized_variables, unused_element

import 'package:first_app/output.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:studentmarks/output.dart';

class studentmarks extends StatefulWidget {
  const studentmarks({super.key});

  @override
  State<studentmarks> createState() => _studentmarksState();
}

class _studentmarksState extends State<studentmarks> {
  var math = TextEditingController();
  var eng = TextEditingController();
  var chem = TextEditingController();
  var phy = TextEditingController();
  var hin = TextEditingController();
  @override
  void dispose() {
    math.dispose();
    eng.dispose();
    chem.dispose();
    phy.dispose();
    hin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _PHYSICS = TextEditingController();
    final _MATHEMATICS = TextEditingController();
    final _CHEMISTRY = TextEditingController();
    final _ENGLISH = TextEditingController();
    final _HINDI = TextEditingController();
    final _tot = TextEditingController();
    int result;
    int sum;
    var val;
    void setval() {
      setState(() {
        val = (int.parse(_PHYSICS.value.text.trim()) +
            int.parse(_CHEMISTRY.value.text.trim()) +
            int.parse(_MATHEMATICS.value.text.trim()) +
            int.parse(_ENGLISH.value.text.trim()) +
            int.parse(_HINDI.value.text.trim()));
      });
      print(val.toString());
    }

    final H = MediaQuery.of(context).size.height;
    final W = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: ,

      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 0,
              child: Container(
            height: H,
            width: W,
            child: Image.network(
              fit:BoxFit.fill,
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS77YjqIUcSXltgiUi8c2iTne0f-zvEYRv3gQ&usqp=CAU'),
          ),),
          Container(
              // height: 10,
              // width: 10,
              child: Opacity(
                opacity: 0.7,
                child: Column(
                          children: [
                Container(
                    alignment: Alignment.center,
                    height: H / 8,
                    width: W,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Student Subjects Marks",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 237, 238, 239)))),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ENTER SUBJECT MARKS :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Container(
                      width: 150,
                      child: TextField(
                        controller: phy,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            labelText: "PHISICS",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(209, 2, 2, 2)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ENTER SUBJECT MARKS :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Container(
                      width: 150,
                      child: TextField(
                        controller: math,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            labelText: "MATHEMATICS",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ENTER SUBJECT MARKS :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Container(
                      width: 150,
                      child: TextField(
                        controller: chem,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            labelText: "CHEMISTRY",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 12, 12, 12)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ENTER SUBJECT MARKS :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Container(
                      width: 150,
                      child: TextField(
                        controller: eng,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            labelText: "ENGLISH",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ENTER SUBJECT MARKS :',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Container(
                      width: 150,
                      child: TextField(
                        controller: hin,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            labelText: "HINDI",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.center,
                  height: H / 20,
                  width: W / 3,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    )),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OutputScreen(
                            math: math.value.text.trim().toString(),
                            chem: chem.value.text.trim().toString(),
                            eng: eng.value.text.trim().toString(),
                            hin: hin.value.text.trim().toString(),
                            phy: phy.value.text.trim().toString(),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Get Result",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                          ],
                        ),
              )),
        ],
      )),
    );
  }
}
