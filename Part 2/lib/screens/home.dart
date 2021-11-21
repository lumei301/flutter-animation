import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/screenTitle.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomInset: false,
     body: Stack(
       fit: StackFit.loose,
       children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(94, 114, 228, 1.0),
            child: SvgPicture.asset(
              'assets/icons/bg.svg',                
              fit: BoxFit.cover,
              allowDrawingOutsideViewBox: true,
              matchTextDirection: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[                    
                    ScreenTitle()
                  ]
                )
              )
            )
          )
       ]
     )       
    );
  }
}