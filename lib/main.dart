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
  Expanded mainfun(int num, Color color) {
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
          mainfun(1, Colors.red),
          mainfun(2, Colors.orange),
          mainfun(3, Colors.yellow),
          mainfun(4, Colors.green),
          mainfun(5, Colors.greenAccent),
          mainfun(6, Colors.blue),
          mainfun(7, Colors.purple),
        ],
      ),
    );
  }
}
