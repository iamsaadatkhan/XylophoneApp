import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundNumber) {
    final player1 = AudioCache();
    player1.play('note$soundNumber.wav');
  }

 Expanded buildKey(Color color , int soundNumber){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red ,1),
                buildKey(Colors.orange , 2),
                buildKey(Colors.yellow , 3),
                buildKey(Colors.green , 4),
                buildKey(Colors.teal , 5),
                buildKey(Colors.blue,6),
                buildKey(Colors.purple , 7)

            ],),
        ),
      ),
    );
  }
}
