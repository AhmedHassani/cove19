import 'dart:ui';

import 'package:coved19/fonts.dart';
import 'package:coved19/regster.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'login_admin.dart';

var _color = Color.fromRGBO(108, 99, 255, 0.9);
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _color,
        title: Align(
          alignment: Alignment.centerRight,
          child: H2("الصفحة الرئيسية"),
        ),
      ),
      body:Container(
        decoration:const BoxDecoration(
          image:  DecorationImage(
            image:  ExactAssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child:  BackdropFilter(
          filter:  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child:  Container(
            decoration:  BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Regster()));
                      },
                      child:Container(
                        width: 200,
                        padding: EdgeInsets.all(5),
                        color: _color,
                        child:Center(
                          child:H1("مريض جديد"),
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
                          child:H1("مريض سابق"),
                        ),
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white, // foreground
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                            LoginAdmin()));
                      },
                      child:Container(
                        width: 200,
                        padding: EdgeInsets.all(5),
                        color: _color,
                        child:Center(
                          child:H2("تسجيل دخول كطبيب"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*

 */
/*

 */
