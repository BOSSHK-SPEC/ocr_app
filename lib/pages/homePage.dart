import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'generateQR.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 500,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Display Image

          SizedBox(height: 200),

          //Second Button
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GenerateQR()));
              },
              child: Text(
                "Generate QR Code",
                style: TextStyle(color: Colors.indigo[900]),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
