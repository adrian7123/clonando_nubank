import 'package:flutter/material.dart';

class CardFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(200, 200, 200, 1),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      height: 70,
        child: Text(
          'Transferencia de R\$ 20,00 recebida de Diego Schell Fernandes Hoje às 06:00h',
          style: TextStyle(
            fontSize: 16,
            
          ),
          textAlign: TextAlign.center,
        ),
      
    );
  }
}