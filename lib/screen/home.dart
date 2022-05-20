import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var icons = CupertinoIcons.heart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navneet"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          iconSize: 200,
          onPressed: (){
            setState(() {
              icons = CupertinoIcons.heart_fill;
            });

            print("Icon is chenge");

          },
          icon: Icon(
            icons,
            color: Colors.pink,),
        ),
      ),
    );
  }
}
