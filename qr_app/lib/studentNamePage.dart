import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StudentName extends StatefulWidget {
  const StudentName({Key? key}) : super(key: key);

  @override
  _StudentNameState createState() => _StudentNameState();
}

class _StudentNameState extends State<StudentName> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter Student Name!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
            TextFormField(),
            OutlinedButton(
              onPressed: null,
              child: Icon(
                Icons.double_arrow_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
