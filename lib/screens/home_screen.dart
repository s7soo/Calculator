import 'package:flutter/material.dart';

import '../customer_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var textController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    List<Widget> buttonList = [
      calcButton(
          width: 50,
          height: 50,
          child: Text("C", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: (){
            setState(() {
              textController.clear();
            });
          }
      ),
      calcButton(
          width: 40,
          height: 40,
          child: Text("+/-", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {}),
      calcButton(
          width: 40,
          height: 40,
          child: Text("%", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {}),
      calcButton(
          width: 40,
          height: 40,
          child: Text("/", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.red,
          fn: () {
            setState(() {
              textController.text += "/";
            });
          }),
      calcButton(
          width: 40,
          height: 40,
          child: Text("7", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "7";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("8", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "8";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("9", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "9";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("X", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.red,
          fn: () {
            setState(() {
              textController.text += "X";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("4", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "4";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("5", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "5";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("6", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "6";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("-", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.red,
          fn: () {
            setState(() {
              textController.text += "-";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("1", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "1";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("2", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "2";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("3", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "3";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("+", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.red,
          fn: () {
            setState(() {
              textController.text += "+";
            });
          }),
      calcButton(
          width: 100,
          height: 50,
          child: Text("0", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += "0";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text(".", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: () {
            setState(() {
              textController.text += ".";
            });
          }),
      calcButton(
          width: 50,
          height: 50,
          child: Text("=", style: TextStyle(fontSize: 40),),
          iconColor: Colors.white,
          backgroundColor: Colors.grey,
          fn: (){
            setState(() {
              textController.text += "=";
            });
          }),
    ];
    final fullWidth = MediaQuery.sizeOf(context).width;
    final fullHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: fullHeight * 0.1),
            TextField(
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 40),
              controller: textController,
              enabled: false,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            SizedBox(height: fullHeight * 0.05),
            GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                    crossAxisCount: 4),
                itemCount: buttonList.length,
                shrinkWrap: true,
                itemBuilder: (ctx, i) {
                  return buttonList[i];
                })
          ],
        ),
      ),
    );
  }
}
