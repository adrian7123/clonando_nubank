import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {

  Image logo = Image(
    image: AssetImage('img/nu_logo.png'),
  
  );

  Text nome = Text(
    'Adrian',
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      height: 80,
      child: Column(
        children: [ 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: logo
              ),
              nome
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ],

          ),
        ]
      )
    );
  }
}