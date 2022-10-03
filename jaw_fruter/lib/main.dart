// Is going to have something here when I start learning Flutter!
import 'package:flutter/material.dart';

const double defaultFontSize = 20.0;

void main() => runApp(MaterialApp(
      home: JawsHome(),
      debugShowCheckedModeBanner: false, 
    )
  );

class JawsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Jaw Frutter'),
            centerTitle: true,
            backgroundColor: Colors.black12),
        body: Row(
          children: [
            Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(30.0),
            margin: const EdgeInsets.all(20.0),
            child: const Text("Jawzitos Flutter"),
            ),
            const Text("Sexo 2"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text("+",
              style: TextStyle(
                fontSize: defaultFontSize,
                fontWeight: FontWeight.bold,
              )),
          onPressed: () => {debugPrint("jaw")},
        ),
      );
  }
}


