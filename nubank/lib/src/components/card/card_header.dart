import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.attach_money,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
            Icon(
              Icons.visibility_off,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ],
        ),
      
    );
  }
}