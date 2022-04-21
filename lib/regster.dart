import 'package:flutter/material.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'fonts.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();
  final TextEditingController _fatherController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  SimpleFontelicoProgressDialog ? _dialog;



  @override
  void initState() {
    //FirebaseFirestore firestore = FirebaseFirestore.instance;
     _dialog= SimpleFontelicoProgressDialog(context: context, barrierDimisable:  false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title: H1("انشاء حساب"),
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
                controller: _nameController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'الاسم الكامل',
                  labelStyle: style()
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
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: 'كلمه السر',
                    labelStyle: style()
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _emailController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: 'البريد الالكتروني',
                    labelStyle: style()
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
                controller: _fatherController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: 'اسم الاب',
                    labelStyle: style()
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _dateController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'تاريخ الميلاد',
                    labelStyle: style()
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
                controller: _cityController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'المحافظه',
                    labelStyle: style()
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
                controller: _placeController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'المنطقه',
                    labelStyle: style()
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
                controller: _numberController,
                textAlign: TextAlign.right,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'رقم الدار',
                    labelStyle: style()
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
                H1("نعم"),
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
                H1("لا"),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child:H1("مريض قلب "),
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
                H1("نعم"),
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
                H1("لا"),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child:H1("مريض سكر "),
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
                H1("نعم"),
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
                H1("لا"),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child:H1("مريض ظغط ",),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            FlatButton(
              textColor: Colors.white, // foreground
              onPressed: () {
                showDialog();
                CollectionReference users = FirebaseFirestore.instance.collection('users');
                users.add({
                  'city ': _cityController.text,
                  'name':_nameController.text,
                  'date': _dateController.text,
                  'diabetes': val1,
                  'email ': _emailController.text,
                  'father_name': _fatherController.text,
                  'heart': val,
                  'home ': _numberController.text,
                  'password': _passwordController.text,
                  'place ': _placeController.text,
                  'pressure ': val2,
                }).then((value) => sccessful())
                    .catchError((error) => filed());
              },
              child: Container(
                width: 200,
                padding: EdgeInsets.all(12),
                color: _color,
                child:  Center(
                  child: H1('حفظ البيانات'),
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

  sccessful() {
    _dialog!.hide();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("تم الحفظ البيانات"),
    ));
    }

  filed(){
    _dialog!.hide();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("تعذر حفظ البيانات"),
    ));
  }
  void showDialog() async{
    _dialog!.show(message: 'Loading...');
    await Future.delayed(Duration(seconds: 1));
  }
}
