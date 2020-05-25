import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Saldo disponivel',
              style: TextStyle(
                color: Color.fromRGBO(140, 140, 140, 1),
                fontSize: 13,
              ),
            ),
            Text(
              'R\$ 197.611.432,00',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
            ),
          ],
      ),
    );
  }
}