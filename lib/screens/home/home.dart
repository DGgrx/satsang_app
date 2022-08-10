import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:satsang_app/screens/wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          print(_auth.currentUser!.uid);
          await _auth.signOut();
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Wrapper()) );
        },
      ),
    );
  }
}
