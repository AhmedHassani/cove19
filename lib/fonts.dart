import 'package:flutter/material.dart';

Widget H1(String text){
  return Text(text,style: const TextStyle(fontFamily: 'Cairo',fontSize: 16),);
}

Widget H1W(String text){
  return Text(text,style: const TextStyle(fontFamily: 'Cairo',color: Colors.white,fontSize: 16),);
}

Widget H2(String text){
  return Text(text,style: const TextStyle(fontFamily: 'Cairo',fontSize: 16),);
}

style(){
  return const TextStyle(fontFamily: 'Cairo',fontSize: 16);
}