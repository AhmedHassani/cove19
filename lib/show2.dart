import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fonts.dart';


class Show2 extends StatefulWidget {
  String ? email;
  String ? name;
  Show2(this.email,this.name);

  @override
  _ShowState createState() => _ShowState();
}

var _color = const Color.fromRGBO(108, 99, 255, 1);

class _ShowState extends State<Show2> {

  CollectionReference ? users;

  @override
  void initState() {
    users= FirebaseFirestore.instance.collection('reservation');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title: H2("${widget.name}تفاصيل الحجز "),
        elevation: 0,
      ),
      body:FutureBuilder<DocumentSnapshot>(
        future: users!.doc("${widget.email}").get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exist");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
            return Container(
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
                              child:H1("${data['city ']}"),
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
                              child:H1(data['center']),
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
                              child:H1(data['place']),
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
                              child:H1(data['dose']),
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
                              child:H1("${data['date']}"),
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
                              child:H1("${data['time ']}"),
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
            );
           // return Text("Full Name: ${} ${data['last_name']}");
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                 CircularProgressIndicator()
              ],
            ),
          );
        },
      ) ,
    );
  }


}




