import 'package:flutter/material.dart';

Widget H1(String text){
  return Text(text,style: const TextStyle(fontFamily: 'Cairo'),);
}
Widget H1W(String text){
  return Text(text,style: const TextStyle(fontFamily: 'Cairo',color: Colors.white),);
}
Widget H2(String text){
  return Text(text,style: const TextStyle(fontFamily: 'Cairo',fontSize: 16),);
}