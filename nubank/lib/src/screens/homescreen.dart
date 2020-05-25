import 'package:flutter/material.dart';
import 'package:nubank/src/components/card/card.dart';
import 'package:nubank/src/components/header.dart';
import 'package:nubank/src/components/menu.dart';
import 'package:nubank/src/components/tabs.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {  

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(97, 47, 116, 1),
        width: double.infinity,
        child: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    HeaderWidget(),
                    MenuWidget(),
                    TabsWidget(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget()
                  ],
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
