//import 'package:flutter/material.dart';
//
//import 'tab1.dart';
//import 'tab2.dart';
//
//void main() {
//  runApp(new MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: Homepage(),
//  ));
//}
//
//class Homepage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return DefaultTabController(
//        length: 2,
//        child: Scaffold(
//          appBar: AppBar(
//            title: Text('HomePage'),
//            bottom: TabBar(
//              tabs: [
//                Tab(
//                  text: "Mail",
//                  icon: Icon(Icons.email),
//                ),
//                Tab(
//                  text: "Wallet",
//                  icon: Icon(Icons.account_balance_wallet),
//                ),
//              ],
//            ),
//          ),
//     body: TabBarView(
//       children: [
//         FirstScreen(),
//         SecondScreen(),
//       ],
//     ),
//
//        ));
//  }
//}
//
////defaulttabcontroller
//
////push.then
//
////initstate
//
//

import 'package:flutter/material.dart';

import 'sharedata.dart';
import 'tab1.dart';
import 'tab2.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ShareData.x.add("10");
    ShareData.x.add("20");
    ShareData.x.add("30");
    ShareData.x.add("40");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("First Page"),
    ),
      body: ListView.builder(
        itemCount:ShareData.x.length ,
        itemBuilder: (context, index) {
          return Center(child: Text(ShareData.x[index]));
        },),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FirstScreen();

        },)).then((value) {
          setState(() {

          });
        });
      },child: Text("next"),),
    );
  }
}
