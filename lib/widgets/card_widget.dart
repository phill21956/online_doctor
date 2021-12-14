import 'package:flutter/material.dart';
import 'package:online_doctor/ui/homePage.dart';


class CardList extends StatelessWidget {
  final Color cardColor;
  final String name;
  final String text;
  final Icon cardIcon;
  const CardList(
    this.cardColor,
    this.cardIcon,
    this.name,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      height: 100,
      child: Card(
        child: ListTile(
          onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: cardIcon,
          ),
          title: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          subtitle: Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              text,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
