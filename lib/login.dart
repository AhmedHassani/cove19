import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'fonts.dart';
import 'select.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

var _color = Color.fromRGBO(108, 99, 255, 1);

class _LoginState extends State<Login> {
  TextEditingController _passwordController =  TextEditingController();
  TextEditingController _usernameController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title:H2("تسجيل دخول"),
        elevation: 0,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'الايمل',
                    hintText: 'abc@gmail.com'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                textAlign: TextAlign.right,
                decoration:const  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'الباسورد',
                    hintText: ''),
              ),
            ),
            //
            const  SizedBox(height:40,),
            FlatButton(
              textColor: Colors.white, // foreground
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('users')
                    .get()
                    .then((QuerySnapshot querySnapshot) {
                  querySnapshot.docs.forEach((doc) {
                    if(doc["email "]==_usernameController.text&&_passwordController.text==doc["password"]){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          Select(doc["email "])), (Route<dynamic> route) => false);
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("اسم المستخدم او كلمه المرور غير صحيحه"),
                      ));
                    }
                  });
                });

              },
              child:Container(
                width: 200,
                padding: EdgeInsets.all(12),
                color: _color,
                child:Center(
                  child:Text('تسجيل دخول'),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}