import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_tests/card_lists.dart';
import 'package:my_flutter_tests/test_applications/clip_path_widget_example.dart';
import 'package:my_flutter_tests/widget_templates/card_design.dart';

void main() {
  runApp(
    MaterialApp(
      home: FlutterTestAppMainPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class FlutterTestAppMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widget Test App"),
      ),
      body: Center(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClipPathWidgetExample()),
                    );
                  },
                  child: Text("Clip Path"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardDesign()),
                    );
                  },
                  child: Text("Credit Card Design"),
                ),

                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardLists()),
                    );
                  },
                  child: Text("Credit Card List"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
