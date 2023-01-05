import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/colors.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({Key? key}) : super(key: key);

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  var text = "Hold the button and start speaking";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: const AvatarGlow(
        endRadius: 45.0,
        animate: true,
        duration: Duration(milliseconds: 1000),
        glowColor: Colors.lightBlue,
        repeat: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        showTwoGlows: true,
        child: CircleAvatar(
          backgroundColor: bgColor,
          radius: 35,
          child: Icon(Icons.mic, color: Colors.white),
        ),
      ),

      // For AppBar
      appBar: AppBar(
        leading: const Icon(Icons.sort_rounded, color: Colors.white),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        title: const Text(
          "Speech to Text Converter",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),

      // For Container
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        margin: const EdgeInsets.only(bottom: 150),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
