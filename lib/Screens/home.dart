import 'package:assignment007/Widgets/container.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> adds=[CustomContainer(),CustomContainer()];
  List<Widget> swap(List<Widget> iso)
  {
    Widget x=iso[0];
    iso[0]=iso[1];
    iso[1]=x;
    return iso;
  }
  void _incrementCounter() {
    setState(() {
     adds=swap(adds);
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body:
      Row(
            children: [adds[0],adds[1]]
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.emoji_emotions_outlined,size: 25.0,),
      ),
    );
  }
}