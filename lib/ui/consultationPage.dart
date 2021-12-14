import 'package:flutter/material.dart';
import 'package:online_doctor/ui/homePage.dart';
import 'package:online_doctor/widgets/card_widget.dart';

class ConsultationPage extends StatefulWidget {
  @override
  _ConsultationPageState createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_sharp),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Choose\nConsultation\nFormat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              CardList(
                Colors.purple[400],
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
                'Chat',
                'When you are\n just busy to talk',
              ),
              SizedBox(
                height: 10,
              ),
              CardList(
                Colors.blue[300],
                Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                'Call',
                'When you are\n just busy to talk',
              ),
              SizedBox(
                height: 10,
              ),
              CardList(
                Colors.pink,
                Icon(
                  Icons.local_hospital_rounded,
                  color: Colors.white,
                ),
                'Visit',
                
                'When you are\n just busy to talk',
              ),

              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => HomePage()),
              //     );
              //   },
              //   child: Row(
              //     children: <Widget>[
              //       Container(
              //           height: 50,
              //           width: 50,
              //           decoration: BoxDecoration(
              //             color: Colors.blue[300],
              //             borderRadius: BorderRadius.circular(12),
              //           ),
              //           child: Icon(
              //             Icons.call,
              //             color: Colors.white,
              //           )),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         children: <Widget>[
              //           Container(
              //               padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
              //               child: Text(
              //                 'Call',
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   fontSize: 21,
              //                 ),
              //               )),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Text(
              //             'Same as phone call but\n you can share the photo',
              //             style: TextStyle(color: Colors.grey),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              // Row(
              //   children: <Widget>[
              //     Container(
              //         height: 50,
              //         width: 50,
              //         decoration: BoxDecoration(
              //           color: Colors.pink,
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //         child: Icon(
              //           Icons.local_hospital_rounded,
              //           color: Colors.white,
              //         )),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Column(
              //       children: <Widget>[
              //         Container(
              //             padding: EdgeInsets.fromLTRB(0, 0, 60, 0),
              //             child: Text(
              //               'Visit',
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 21,
              //               ),
              //             )),
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Text(
              //           'When you are\n just busy to talk',
              //           style: TextStyle(color: Colors.grey),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
