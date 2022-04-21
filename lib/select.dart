import 'package:coved19/reservation.dart';
import 'package:coved19/show.dart';
import 'package:flutter/material.dart';

import 'fonts.dart';
import 'login.dart';
import 'login_admin.dart';

var _color = Color.fromRGBO(108, 99, 255, 1);
class Select extends StatefulWidget {
  String email;
  String name;
  Select(this.email,this.name, {Key? key}) : super(key: key);

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
          leading: IconButton(
            icon: const Icon(Icons.logout,color: Colors.white,),
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
              Login()), (Route<dynamic> route) => false);
            },
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
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Reservation(widget.email,widget.name)));

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
                ),
              ],
            ),
          ),
        ),
    );
  }
}
