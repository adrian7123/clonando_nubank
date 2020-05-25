import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {

  double tam = 90;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Tabs(
            icone: Icons.person_add,
            texto: 'Indicar Amigos',
          ),
          Tabs(
            icone: Icons.phone_android,
            texto: 'Recarga de celular',
          ),
          Tabs(
            icone: Icons.chat_bubble_outline,
            texto: 'Cobrar',
          ),
          Tabs(
            icone: Icons.arrow_downward,
            texto: 'Depositar',
          ),
          Tabs(
            icone: Icons.arrow_upward,
            texto: 'Transferir',
          ),
          Tabs(
            icone: Icons.help_outline,
            texto: 'Ajuda',
          ),
          Tabs(
            icone: Icons.payment,
            texto: 'Pagar',
          ),
          Tabs(
            icone: Icons.lock,
            texto: 'Bloquear Cartão',
          ),
          
          
          
        ],
      )
    );
  }
}

class Tabs extends StatefulWidget {
  final IconData icone;
  final String texto;

  Tabs({this.icone, this.texto});

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final double tam = 90;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tam,
      height: tam,
      color: Color.fromRGBO(255, 255, 255, .2),
      margin: EdgeInsets.all(7),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                widget.icone,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                widget.texto,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}