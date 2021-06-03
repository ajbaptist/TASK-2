import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_app/qrScanner..dart';
import 'package:qr_app/studentNamePage.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String email = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Hi!There Welcome',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.teal),
              ),
            ),
            TextFormField(
              onChanged: (val) {
                email = val;
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Enter Mail Id', prefixIcon: Icon(Icons.mail)),
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                  hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.remove_red_eye_rounded)),
            ),
            OutlinedButton(
                onPressed: () async {
                  try {
                    await _firebaseAuth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    // ignore: unnecessary_null_comparison

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StudentName()));
                  } catch (e) {
                    print(e);
                  }
                },
                child: Icon(
                  Icons.login_rounded,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
