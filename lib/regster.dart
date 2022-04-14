import 'package:flutter/material.dart';
import 'select.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Regster extends StatefulWidget {
  @override
  _RegsterState createState() => _RegsterState();
}

var _color = const Color.fromRGBO(108, 99, 255, 1);
var val = -1;
var val1 = -1;
var val2 = -1;

class _RegsterState extends State<Regster> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();


  @override
  void initState() {
    //FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    users.add({
      'full_name': "ff",
      'company': "ff",
      'age': "ff"
    }).then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title: const Text("انشاء حساب"),
        elevation: 0,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'الاسم الكامل',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'كلمه السر',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'البريد الالكتروني',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
              child: TextField(
                controller: _passwordController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'اسم الاب',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'تاريخ الميلاد',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
              child: TextField(
                controller: _passwordController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'المحافظه',
                  labelStyle: TextStyle()
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
              child: TextField(
                controller: _passwordController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'المنطقه',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0),
              child: TextField(
                controller: _passwordController,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'رقم الدار',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = int.parse("$value");
                    });
                  },
                  activeColor: _color,
                ),
                Text("نعم"),
                Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = int.parse("$value");
                    });
                  },
                  activeColor: _color,
                ),
                Text("لا"),
                const SizedBox(
                  height: 20,
                ),
                const  Padding(
                  padding: EdgeInsets.only(right: 25),
                  child:Text("مريض قلب "),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Radio(
                  value: 1,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = int.parse("$value");
                    });
                  },
                  activeColor: _color,
                ),
                Text("نعم"),
                Radio(
                  value: 2,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = int.parse("$value");
                    });
                  },
                  activeColor: _color,
                ),
                Text("لا"),
                const SizedBox(
                  height: 20,
                ),
                const  Padding(
                  padding: EdgeInsets.only(right: 25),
                  child:Text("مريض سكر "),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Radio(
                  value: 1,
                  groupValue: val2,
                  onChanged: (value) {
                    setState(() {
                      val2 = int.parse("$value");
                    });
                  },
                  activeColor: _color,
                ),
                Text("نعم"),
                Radio(
                  value: 2,
                  groupValue: val2,
                  onChanged: (value) {
                    setState(() {
                      val2 = int.parse("$value");
                    });
                  },
                  activeColor: _color,
                ),
                Text("لا"),
                const SizedBox(
                  height: 20,
                ),
                const  Padding(
                  padding: EdgeInsets.only(right: 25),
                  child:Text("مريض ظغط ",),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            FlatButton(
              textColor: Colors.white, // foreground
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Select()));
              },
              child: Container(
                width: 200,
                padding: EdgeInsets.all(12),
                color: _color,
                child: const Center(
                  child: Text('حفظ البيانات'),
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
