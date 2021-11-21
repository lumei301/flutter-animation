import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.blue;
  double _margin = 0;
  double _width = 200;
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
   return AnimatedContainer(
      margin: EdgeInsets.all(_margin),
      width: _width,
      color: _color,
      duration: Duration(seconds: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary:  Colors.yellow),
              child: Text('animate color', style: TextStyle(color: Colors.black)),
              onPressed: () => setState(()=> _color =Colors.red),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary:  Colors.yellow),
              child: Text('animate opacity', style: TextStyle(color: Colors.black)),
              onPressed: () => setState(()=> _opacity =0)
            ),
            AnimatedOpacity(
                duration: Duration(seconds: 3),
                opacity: _opacity,
                curve: Curves.bounceInOut,
                child: Text('Hide Me',
                  style: TextStyle(color: Colors.white),
                ),
              )
        ],
      ),
    );
  }
}