import '../main.dart';

//play
Future<void> speakText(
    double volume, double rate, double pitch, String voiceText) async {
  await flutterTts.setVolume(volume);
  await flutterTts.setSpeechRate(rate);
  await flutterTts.setPitch(pitch);

  if (voiceText != '') {
    if (voiceText.isNotEmpty) {
      await flutterTts.speak(voiceText);
    }
  }
}

//pause
Future<void> pause() async {
  await flutterTts.pause();
}

//stop
Future<void> stop() async {
  await flutterTts.stop();
}
