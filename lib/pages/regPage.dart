import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class regPage extends StatefulWidget {
  const regPage({Key? key}) : super(key: key);

  @override
  State<regPage> createState() => _regPageState();
}

class _regPageState extends State<regPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(),
        ],
      ),
    );
  }
}
