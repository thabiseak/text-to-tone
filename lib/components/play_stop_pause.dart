import 'package:flutter/material.dart';

import '../build_button.dart';
import '../consts/speak.dart';

class PlayStopPause extends StatelessWidget {
  final double volume, rate, pitch;
  final String voiceText;
  const PlayStopPause(
      {super.key,
      required this.pitch,
      required this.rate,
      required this.voiceText,
      required this.volume});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildButton(
              label: 'PLAY',
              icon: Icons.play_arrow,
              color: Colors.green,
              func: () {
                speakText(volume, rate, pitch, voiceText);
              },
              splashColor: Colors.greenAccent),
          BuildButton(
              label: 'STOP',
              icon: Icons.stop,
              color: Colors.red,
              func: () {
                stop();
              },
              splashColor: Colors.redAccent),
          BuildButton(
              label: 'PAUSE',
              icon: Icons.pause,
              color: Colors.blue,
              func: () {
                pause();
              },
              splashColor: Colors.blueAccent),
        ],
      ),
    );
  }
}
