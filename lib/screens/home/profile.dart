import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:satsang_app/screens/wrapper.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({Key? key}) : super(key: key);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 120.0,),
            CircleAvatar(
              child: Icon(
                Icons.person,
                size: 100.0,
              ),
              backgroundColor: Colors.black,
              radius: 50.0,
            ),
            SizedBox(height: 20.0,),

            // Text("${_user!.phoneNumber}"),
            Text("${_user!.phoneNumber}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 230.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 120.0),
              child: ElevatedButton(

                  onPressed: () async {
                    print(_auth.currentUser!.uid);
                    await _auth.signOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Wrapper()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Log Out",
                    style: TextStyle(
                      fontSize: 20.0
                    ),),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
