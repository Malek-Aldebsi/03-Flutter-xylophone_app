import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: bodyApp()),
    );
  }
}

class bodyApp extends StatefulWidget {
  @override
  _bodyAppState createState() => _bodyAppState();
}

class _bodyAppState extends State<bodyApp> {
  Expanded mainFun(int num, Color color) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/note$num.wav"),
            autoStart: true,
            showNotification: true,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          mainFun(1, Colors.red),
          mainFun(2, Colors.orange),
          mainFun(3, Colors.yellow),
          mainFun(4, Colors.green),
          mainFun(5, Colors.greenAccent),
          mainFun(6, Colors.blue),
          mainFun(7, Colors.purple),
        ],
      ),
    );
  }
}
