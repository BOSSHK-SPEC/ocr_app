import 'package:flutter/cupertino.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text('HIi'),
          Text ('Hii'),
        ],
      ),
    );
  }
}
