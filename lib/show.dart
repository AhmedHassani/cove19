import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fonts.dart';


class Show extends StatefulWidget {
  String ? email;

  Show(this.email);

  @override
  _ShowState createState() => _ShowState();
}

var _color = const Color.fromRGBO(108, 99, 255, 1);

class _ShowState extends State<Show> {

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
        title: H2("تفاصيل الحجز"),
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
                    child:Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3.5),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child:H1("المنطقه"),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
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
                    child:Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3.5),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child:H1("المنطقه"),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
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
                    child:Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3.5),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child:H1("المنطقه"),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
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
                    child:Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3.5),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child:H1("المنطقه"),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
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
                    child:Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3.5),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child:H1("المنطقه"),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
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
                    child:Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3.5),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child:H1("المنطقه"),
                      ),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
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

}


