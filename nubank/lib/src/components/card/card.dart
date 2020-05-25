import 'package:flutter/material.dart';

import 'card_body.dart';
import 'card_footer.dart';
import 'card_header.dart';

class CardWidget extends StatefulWidget {

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> with TickerProviderStateMixin  {

  double _translationY;

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 2500), 
        vsync: this, 
        value: 0.1
    );
    _translationY = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, _translationY), 
      child: GestureDetector(
        onPanUpdate: (p) {
          setState(() {
            if(_translationY <= 404 && _translationY >= -70){
              _translationY += p.delta.dy;

            }else if(_translationY <= -70){
              
              _translationY += 1;
            }else {
              _translationY -= 1;
            }
            //404 -90
          });
        },
        child: CardContainerWidget(),
      )
    );
  }
}

class CardContainerWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    MediaQueryData device = MediaQuery.of(context);

    return Container(
        width: device.size.width >= 503 ? 503 : device.size.width,
        height: 405,
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardHeader(),
            CardBody(),
            CardFooter(),
          ],
        ),
    );
  }
}

