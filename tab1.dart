import 'package:flutter/material.dart';
import 'package:flutterlastapp/sharedata.dart';
//
//class FirstScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Center(
//          child: Text('tab1',
//            style: TextStyle(fontSize: 32.0),
//          )
//      ),
//    );
//  }
//}
//
//
////library/flutter/bin/flutter run -d chrome --web- renderer html


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("First Page"),
    ),

      floatingActionButton: FloatingActionButton(onPressed: () {

        ShareData.x.removeAt(0);
        print(ShareData.x.length);

      },child: Text("delete"),),
    );
  }
}