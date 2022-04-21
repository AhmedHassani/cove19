import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coved19/show2.dart';
import 'package:flutter/material.dart';

import 'fonts.dart';
import 'home_page.dart';

class Tikect extends StatefulWidget {
  const Tikect({Key? key}) : super(key: key);

  @override
  _TikectState createState() => _TikectState();
}
var _color = const Color.fromRGBO(108, 99, 255, 1);
class _TikectState extends State<Tikect> {

  final Stream<QuerySnapshot> _usersStream =
  FirebaseFirestore.instance.collection('reservation').snapshots();

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title: H2("عرض الحجوزات"),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.logout,color: Colors.white,),
          onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                HomePage()), (Route<dynamic> route) => false);
          },
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              return Card(
                child:ListTile(
                  title: Text("${data['name']}",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
                  trailing: Column(
                    children: [
                      H1("${data['dose']}"),
                      //Text("${data['city ']}"),
                    ],
                  ),
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Show2(data['email'],data['name'])));
                  },
                  subtitle: Text("${data['email']}"),

                ),
              );
            }).toList(),
          );
        },
      )
    );
  }
}
