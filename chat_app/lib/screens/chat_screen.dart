import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => Container(
                  child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('this Works'),
              ))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async{
          WidgetsFlutterBinding.ensureInitialized();
          await FirebaseFirestore.initializeApp();
          FirebaseFirestore.instance
              .collection('chats/0Nt1nxnYfQl7rw1P5lB9/messages')
              .snapshots()
              .listen((event) {
            print(event);
          });
        },
      ),
    );
  }
}
