import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {

  String qrData="https://github.com/BOSSHK-SPEC/ocr_app";
  final qrdataFeed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Generate QR Code")),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(

          //Scroll view given to Column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(data: qrData),
              SizedBox(height: 20),
              Text("Generate QR Code",style: TextStyle(fontSize: 20),),


              const TextField(
                decoration: InputDecoration(
                    hintText: "Enter your link here..."
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: ElevatedButton(
                  onPressed: () async {

                    if (qrdataFeed.text.isEmpty) {
                      setState(() {
                        qrData = "";
                      });
                    } else {
                      setState(() {
                        qrData = qrdataFeed.text;
                        debugPrint(qrData);
                      });
                    }
                  },

                  child: Text("Generate QR Code",style: TextStyle(color: Colors.indigo[900],),),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
