import 'package:flutter/material.dart';

class ScreenTitle extends StatefulWidget {
  const ScreenTitle({ Key? key }) : super(key: key);

  @override
  _ScreenTitleState createState() => _ScreenTitleState();
}

class _ScreenTitleState extends State<ScreenTitle> {
  Color _color = Color.fromRGBO(94, 114, 228, 1.0);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 3000),
      tween: Tween<double>(begin: 0, end: 1),
      child: Text(
        "Sign In",
        style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold, color: _color),
      ), 
      builder: (BuildContext context, double _opacity, Widget? child) {
        return Opacity(
          opacity: _opacity,
          child: Padding(
            padding: EdgeInsets.only(top: _opacity * 20),
            child: child
          )
        );
      },      
      onEnd: ()=> setState(()=> _color =Color.fromRGBO(23, 43, 77, 1.0)),           
    );
  }
}