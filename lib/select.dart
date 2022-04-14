import 'package:flutter/material.dart';

import 'login.dart';

var _color = Color.fromRGBO(108, 99, 255, 1);
class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: _color,
        ),
        body: Container(

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  textColor: Colors.white, // foregroundff
                  onPressed: () { },
                  child:Container(
                    width: 200,
                    padding: EdgeInsets.all(5),
                    color: _color,
                    child:Center(
                      child:Text('حجز موعد'),
                    ),
                  ),
                ),
                FlatButton(
                  textColor: Colors.white, // foreground
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Login()));
                  },
                  child:Container(
                    width: 200,
                    padding: EdgeInsets.all(5),
                    color: _color,
                    child:Center(
                      child:Text('عرض الموعد'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
