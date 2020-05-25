import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      width: deviceInfo.size.width >= 503 ? 503 : deviceInfo.size.width,

      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QrImage(
              data: "www.nubank.com.br",
              version: QrVersions.auto,
              size: 80.0,
              backgroundColor: Colors.white,
              foregroundColor: Color.fromRGBO(97, 47, 116, 1),
            ),

            Divider(height: 20, color: Color.fromRGBO(2, 2, 2, 0),),

            NavItem(icon: Icons.help_outline, texto: 'Me Ajuda'),
            NavItem(icon: Icons.person_outline, texto: 'Perfil'),
            NavItem(icon: Icons.credit_card, texto: 'Configurar cartão'),
            NavItem(icon: Icons.smartphone, texto: 'Configurações do app'),

           
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              height: 40,
              padding: EdgeInsets.only(top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SignOutButtom(),
                  )
                ],
              )
            )   
             
           
          ],
        ),
      )
    );
  }
}
class NavItem extends StatefulWidget {
  final IconData icon;
  final String texto;

  @override
  NavItem({this.icon, this.texto});

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(97, 47, 116, 1),
      margin: EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            LineWhiteWidget(),

            Row(
            
              children: [
                Icon(
                  widget.icon,
                  color: Colors.white,
                ),
                Padding(padding: EdgeInsets.only(left: 20),
               
                  child:  Text(
                    widget.texto,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    
                  ),
                )
              ],
            ),
          ],
        ),
    );
  }
}

class LineWhiteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Divider(color: Color.fromRGBO(255, 255, 255, 0.6),),
    );
  }
}

class SignOutButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(width: .8, color: Color.fromRGBO(255, 255, 255, 0.8)),
      ),
      child: RaisedButton(
        onPressed: () {},
        color: Color.fromRGBO(255, 255, 255, 0),
        child: Text(
          "SAIR DO APP", 
          style: TextStyle(
            color: Colors.white
            ),
          ), 
      ),
    );
  }
}