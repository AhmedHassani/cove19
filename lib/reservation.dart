import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'fonts.dart';

class Reservation extends StatefulWidget {
  String ? email;
  String ? name;
  Reservation(this.email,this.name);

  @override
  _ReservationState createState() => _ReservationState();
}

var _color = const Color.fromRGBO(108, 99, 255, 1);
var val = -1;
var val1 = -1;
var val2 = -1;

class _ReservationState extends State<Reservation> {
  String selectedValue = "بغداد";
  String selectedValue1 = "المنطقه الاولى";
  String selectedValue2 = "المركز ١";
  String selectedValue3 = "الجرعه ١";
  String ?date;
  String ?time;
  final _dateController = TextEditingController();

  @override
  void initState() {
    //FirebaseFirestore firestore = FirebaseFirestore.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title: H2("حجز موعد"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: DropdownButton(
                        value: selectedValue,
                        isExpanded: true,
                        alignment: AlignmentDirectional.center,
                        style: const TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo"),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: dropdownItems)),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(top: 0),
                  width: 100,
                  child: Center(
                    child: H1W("المحافظه"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.3, color: Colors.grey.shade200),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: DropdownButton(
                        value: selectedValue1,
                        isExpanded: true,
                        alignment: AlignmentDirectional.center,
                        style: const TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo"),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue1 = newValue!;
                          });
                        },
                        items: dropdownItems1)),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(top: 0),
                  width: 100,
                  child: Center(
                    child: H1W("المنطقه"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.3, color: Colors.grey.shade200),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: DropdownButton(
                        value: selectedValue2,
                        isExpanded: true,
                        alignment: AlignmentDirectional.center,
                        style: const TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo"),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue2 = newValue!;
                          });
                        },
                        items: dropdownItems2)),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(top: 0),
                  width: 100,
                  child: Center(
                    child: H1W("المركز"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.3, color: Colors.grey.shade200),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: DropdownButton(
                        value: selectedValue3,
                        isExpanded: true,
                        alignment: AlignmentDirectional.center,
                        style: const TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo"),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue3 = newValue!;
                          });
                        },
                        items: dropdownItems3)),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(top: 0),
                  width: 100,
                  child: Center(
                    child: H1W("الجرعه"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.3, color: Colors.grey.shade200),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: DateTimeFormField(
                        decoration:  InputDecoration(
                          hintStyle: TextStyle(color: Colors.black45,fontFamily: 'Cairo',fontSize: 14),
                          errorStyle: TextStyle(color: Colors.redAccent,fontFamily: 'Cairo',fontSize: 14),
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          labelText: 'تاريخ الجرعه',
                          labelStyle: style(),
                        ),
                        mode:DateTimeFieldPickerMode.date,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (e) {
                          //(e?.day ?? 0) == 1 ? 'Please not the first day' : null;
                          if(e?.weekday==7||e?.weekday==6){
                            return "من فضلك اخنيار احد الايام من الاحد الى الخميس ";
                          }
                          return null;
                        },
                        onDateSelected: (DateTime value) {
                          print("day is : ${value.weekday}");
                          date = "$value";
                        },
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(top: 0),
                  width: 100,
                  child: Center(
                    child: H1W("تاريخ الجرعه"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.3, color: Colors.grey.shade200),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 18),
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45,fontFamily: 'Cairo',fontSize: 14),
                      errorStyle: TextStyle(color: Colors.redAccent,fontFamily: 'Cairo',fontSize: 14),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      labelText: 'وقت الجرعه',
                    ),
                    mode: DateTimeFieldPickerMode.time,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) {
                      if(e!=null) {
                        if (e!.hour > 13 || e!.hour < 8) {
                          return "يرجى الاختيار احد الاوقات من 8 صباحا الى 2 مساء";
                        }
                      }
                      return null;
                    },
                    onDateSelected: (DateTime value) {
                      time = "$value";
                    },
                  ),
                )),
                Container(
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.only(top: 0),
                  width: 100,
                  child: Center(
                    child: H1W("وقت الجرعه"),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1.3, color: Colors.grey.shade200),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            FlatButton(
              textColor: Colors.white, // foreground
              onPressed: () {
                CollectionReference users =
                    FirebaseFirestore.instance.collection('reservation');
                users.doc(widget.email)
                .set({
                      'city ': selectedValue,
                      'name':widget.name,
                      'email': widget.email,
                      'center': selectedValue2,
                      'date':  date,
                      'time ': time,
                      'place': selectedValue1,
                      'dose': selectedValue3,
                    })
                    .then((value) => sccessful())
                    .catchError((error) => filed());
              },
              child: Container(
                width: 200,
                padding: EdgeInsets.all(12),
                color: Colors.deepPurpleAccent,
                child: const Center(
                  child: Text(
                    'حجز موعد',
                    style: TextStyle(fontFamily: "Cairo"),
                  ),
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
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("تم الحفظ البيانات"),
    ));
  }

  filed() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("تعذر حفظ البيانات"),
    ));
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("بغداد"), value: "بغداد"),
      const DropdownMenuItem(child: Text("بابل"), value: "بابل"),
      const DropdownMenuItem(child: Text("كربلاء"), value: "كربلاء"),
      const DropdownMenuItem(child: Text("اربيل"), value: "اربيل"),
      const DropdownMenuItem(child: Text("ذي قار"), value: "ذي قار"),
      const DropdownMenuItem(child: Text("نينوى"), value: "نينوى"),
      const DropdownMenuItem(child: Text("صلاح الدين"), value: "صلاح الدين"),
      const DropdownMenuItem(child: Text("المثنى"), value: "المثنى"),
      const DropdownMenuItem(child: Text("دهوك"), value: "دهوك"),
      const DropdownMenuItem(child: Text("البصره"), value: "البصره"),
      const DropdownMenuItem(child: Text("النجف"), value: "النجف"),
      const DropdownMenuItem(child: Text("القادسيه"), value: "القادسيه"),
      const DropdownMenuItem(child: Text("ميسان"), value: "ميسان"),
      const DropdownMenuItem(child: Text("الأنبار"), value: "الأنبار"),
      const DropdownMenuItem(child: Text("ديالى"), value: "ديالى"),
      const DropdownMenuItem(child: Text("السليمانية"), value: "السليمانية"),
      const DropdownMenuItem(child: Text("كركوك"), value: "كركوك"),
      const DropdownMenuItem(child: Text("واسط"), value: "واسط"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems1 {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("المنطقه الاولى"), value: "المنطقه الاولى"),
      const DropdownMenuItem(child: Text("المنطقه الثانيه"), value: "المنطقه الثانيه"),
      const DropdownMenuItem(child: Text("المنطقه الثالثه"), value: "المنطقه الثالثه"),
      const DropdownMenuItem(child: Text("المنطقه الرابعه"), value: "المنطقه الرابعه"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("المركز ١"), value: "المركز ١"),
      const DropdownMenuItem(child: Text("المركز ٢"), value: "المركز ٢"),
      const DropdownMenuItem(child: Text("المركز ٣"), value: "المركز ٣"),
      const DropdownMenuItem(child: Text("المركز ٤"), value: "المركز ٤"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems3 {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("الجرعه ١"), value: "الجرعه ١"),
      const DropdownMenuItem(child: Text("الجرعه ٢"), value: "الجرعه ٢"),
    ];
    return menuItems;
  }
}


