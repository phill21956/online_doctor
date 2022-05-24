import 'package:flutter/material.dart';

import '../ui/consultationPage.dart';

class HomeBoxWidget extends StatelessWidget {
  final String boxText, boxImage;
  final Color boxColor;
  final VoidCallback homeNav;
  const HomeBoxWidget({
    this.homeNav,
    this.boxText,
    this.boxImage,
    this.boxColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: boxColor,
        //  color: Colors.pinkAccent[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: Text(
              boxText,
              // 'Cough \n& Cold',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: InkWell(
              onTap: homeNav,
              // () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ConsultationPage()),
              //   );
              
              child: Image.asset(boxImage),
              //Image.asset('images/cough.png'),
            ),
          )
        ],
      ),
    );
  }
}
