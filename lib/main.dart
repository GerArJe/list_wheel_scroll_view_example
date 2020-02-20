import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Container(
            child: ListWheelScrollView(
              itemExtent: 80, 
              diameterRatio: 1.5,
              useMagnifier: true,
              magnification: 1.5,
              children: [
                showMessage('message 1'),
                showMessage('message 2'),
                showMessage('message 3'),
                showMessage('message 4'),
                showMessage('message 5'),
                showMessage('message 6'),
                showMessage('message 7'),
              ]),
          )),
    );
  }

  Container showMessage(String message){
    return Container(
      child: Text(
        message,
        style: TextStyle(
          fontSize: 30.0
        ),
      ),
      padding: EdgeInsets.all(20.0),
      color: Colors.blue,
      height: 80.0,
      width: 300.0,
      alignment: Alignment.center,
    );
  }
}


