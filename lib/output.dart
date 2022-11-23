// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
class OutputScreen extends StatefulWidget {
 final math;
  final chem;
  final eng;
  final hin;
  final phy;
  const OutputScreen({
    Key? key,
    required this.math,
    required this.chem,
    required this.eng,
    required this.hin,
    required this.phy,
  }) : super(key: key);

  @override
  State<OutputScreen> createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  @override
  Widget build(BuildContext context) {
    final w = (MediaQuery.of(context).size.width) / 100;
    final h = (MediaQuery.of(context).size.height) / 100;
    TableRow _tablecol1 = TableRow(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            'Subjects',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            'Obtained Marks',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            'Maximum Marks',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),),
        ),
      ],
    );
    TableRow _tablecol2 = TableRow(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            'PHYSICS',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            widget.hin,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            '100',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
      ],
    );
    TableRow _tablecol3 = TableRow(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            'MATHES',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            widget.eng,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            '100',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
      ],
    );
    TableRow _tablecol4 = TableRow(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            'CHEMISTRY',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            widget.math,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 1.29 * h),
          child: Center(
              child: Text(
            '100',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
      ],
    );
    TableRow _tablecol5 = TableRow(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            'ENGLISH',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            widget.phy,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            '100',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
      ],
    );
    TableRow _tablecol6 = TableRow(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            'HINDI',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            widget.chem,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.53 * w, vertical: 10),
          child: Center(
              child: Text(
            '100',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
        ),
      ],
    );
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2JwYBJyKVa9f0Aq6h4LzlNK_7ey65PID9CA&usqp=CAU',
              fit: BoxFit.fill,
            ),),
        Positioned(
          top: 20.4 * h,
          left: 5.1 * w,
          right: 5.1 * w,
          child: Opacity(
            opacity: 1,
            child: Card(
              color: Color.fromARGB(255, 8, 59, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Container(
                height: 59.6 * h,
                width: 91.6 * w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 2.05 * h,
                    ),
                    Text(
                      'FINAL RESULT',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 2.561 * h,
                    ),
                    Container(
                      height: 0.13 * h,
                      width: 81.42 * w,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 2.561 * h,
                    ),
                    Container(
                      height: 12.8 * h,
                      // width: 100,
                      child: Center(
                        child: Table(
                          border: TableBorder.all(),
                          defaultColumnWidth: FixedColumnWidth(90),
                          children: [
                            _tablecol1,
                            _tablecol2,
                            _tablecol3,
                            _tablecol4,
                            _tablecol5,
                            _tablecol6,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.32 * h,
                    ),
                    Container(
                      height: 0.13 * h,
                      width: 81.42 * w,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 1.56 * h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Final Score : ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${(int.parse(widget.chem)
                          +int.parse(widget.phy)
                          +int.parse(widget.math)
                          +int.parse(widget.eng)
                          +int.parse(widget.hin)
                          ).toString()}/500',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 83.23 * h,
          left: 32.82 * w,
          child: Container(
            height: 4.561 * h,
            width: 40 * w,
            // color: Colors.green,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 73, 88, 166)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'PREVIEW',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 17,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}