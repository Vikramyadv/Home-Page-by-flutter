// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const Appy());
}

class Appy extends StatefulWidget {
  const Appy({Key? key}) : super(key: key);

  @override
  State<Appy> createState() => _MyAppState();
}

class _MyAppState extends State<Appy> {
  final SmsQuery _query = SmsQuery();
  List<SmsMessage> _messages = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LAST SMS'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _messages.length,
            itemBuilder: (BuildContext context, int i) {
              var message = _messages[i];
              print(message);
              return ListTile(
                title: Text('${message.sender} [${message.date}]'),
                subtitle: Text('${message.body}'),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            print('naman');
            var permission = await Permission.sms.status;
            print('naman3');
            if (permission.isGranted) {
              print('naman5');
              final messages = await _query.querySms(
                kinds: [SmsQueryKind.inbox, SmsQueryKind.sent],
                // address: '+254712345789',
                count: 10,
              );
              print(messages);
              print('naman4');
              debugPrint('sms inbox messages: ${messages.length}');

              setState(() => _messages = messages);
            } 
            else {
              await Permission.sms.request();
            }
            print('namna2');
            print(_messages);
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}