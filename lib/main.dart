import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: Category(Icons.favorite, Colors.red, 'Hello World'),
      ),
    ),
  );
}

class Category extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final String text;

  Category(this.iconData, this.iconColor, this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
            height: 100,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
//                color: Colors.limeAccent,
                borderRadius: BorderRadius.circular(50.0)),
            child: Row(children: [
              Container(
                  padding: EdgeInsets.all(16),
                  child: Icon(this.iconData, size: 60, color: this.iconColor)),
              Center(child: Text(this.text, style: TextStyle(fontSize: 24)))
            ])),
        onTap: () { print('I was tapped!'); },
    );
  }
}

//class HelloRectangle extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        color: Colors.greenAccent,
//        height: 400.0,
//        width: 300.0,
//        child: Center(
//          child: Text(
//            'Hello!',
//            style: TextStyle(fontSize: 40.0),
//            textAlign: TextAlign.center,
//          ),
//        ),
//      ),
//    );
//  }
//}
