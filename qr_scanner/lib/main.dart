import "package:flutter/material.dart";
import 'package:qr_scanner/scanner.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr Scanner',
      home: MyHome(),
      routes: {
        Scanner.routeName: (ctx) => Scanner(),
      },
    );
  }
}

Widget flatButton(String text, BuildContext ctx, Function pressed) {
  return FlatButton(
    onPressed: pressed,
    child: Text(text),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Scanner"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.network(
              //     "https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556"),
              flatButton("Scan Qr Code", context, () {
                Navigator.of(context).pushNamed(Scanner.routeName);
              }),
              flatButton("Generate Qr Code", context, null),
            ],
          ),
        ),
      ),
    );
  }
}
