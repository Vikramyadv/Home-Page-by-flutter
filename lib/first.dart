// ignore: unused_import
import 'package:first_app/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('HOME PAGE'),
        ),
      // ignore: avoid_unnecessary_containers
         body: Container(
               height: double.infinity,
               width: double.infinity,
               child: FittedBox(
              //  fit: BoxFit.cover,
               child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyAFiTw_xcubVu2ZKu_H6azdo9_v8cfZ1qtg&usqp=CAU',
              ),
           ),
        )
     );
  }
}
