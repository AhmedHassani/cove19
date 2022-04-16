import 'package:coved19/reservation.dart';
import 'package:coved19/show.dart';
import 'package:flutter/material.dart';

import 'fonts.dart';
import 'login.dart';

var _color = Color.fromRGBO(108, 99, 255, 1);
class Select extends StatefulWidget {
  String email;
  Select(this.email, {Key? key}) : super(key: key);

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title:Align(
            alignment: Alignment.centerRight,
            child: H2("تفاصيل الموعد"),
          ),
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Reservation(widget.email)));
                  },
                  child:Container(
                    width: 200,
                    padding: EdgeInsets.all(5),
                    color: _color,
                    child:Center(
                      child:H2("حجز موعد"),
                    ),
                  ),
                ),
                FlatButton(
                  textColor: Colors.white, // foreground
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Show(widget.email)));
                  },
                  child:Container(
                    width: 200,
                    padding: EdgeInsets.all(5),
                    color: _color,
                    child:Center(
                      child:H2("عرض الموعد"),
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
