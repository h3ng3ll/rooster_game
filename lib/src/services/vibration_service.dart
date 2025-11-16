import 'package:vibration/vibration.dart';

class VibrationService {
  static final instance = VibrationService._();

  VibrationService._();

  void vibrateShort() async {
    if (await Vibration.hasVibrator() ) {
      Vibration.vibrate(duration: 100);
    }
  }

  void vibratePattern() async {
    if (await Vibration.hasVibrator() ) {
      Vibration.vibrate(
        pattern: [0, 200, 100, 200],
      );
    }
  }
}
