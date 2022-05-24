import 'package:flutter/material.dart';
import 'package:online_doctor/ui/consultationPage.dart';
import 'package:online_doctor/widgets/button_widget.dart';

import '../widgets/home_box_widget.dart';
import '../widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.sort), onPressed: null),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Text(
                  'Online Doctor\nConsultation',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SearchWidget(),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'choose \na category',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ToggleButtons1(),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HomeBoxWidget(
                          boxImage: 'images/cough.png',
                          boxColor: Colors.pinkAccent[100],
                          boxText: 'Cough \n& Cold',
                          homeNav: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConsultationPage()),
                            );
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      HomeBoxWidget(
                          boxImage: 'images/diabetic.png',
                          boxColor: Colors.yellow[700],
                          boxText: 'Diabetes \n Care',
                          homeNav: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConsultationPage()),
                            );
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      HomeBoxWidget(
                          boxImage: 'images/heart.png',
                          boxColor: Colors.red[400],
                          boxText: 'Heart \n Heart',
                          homeNav: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConsultationPage()),
                            );
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Search by health concern',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(18, 20, 10, 20),
                        color: Colors.grey[50],
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.local_hospital,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'General\nHospital',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 150,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        color: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.local_hospital,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dental\nCare',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
