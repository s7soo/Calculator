import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget calcButton({double? width, double? height, dynamic? child,Color? iconColor, dynamic? backgroundColor,required VoidCallback? fn }){
  return Container(
    width: width,
    height: height,
    child: MaterialButton(

      onPressed: fn!,
    child: child,
      color: backgroundColor,
    ),
  );
}