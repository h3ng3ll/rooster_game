import 'package:audioplayers/audioplayers.dart';
import 'package:rooster_game/gen/assets.gen.dart';
import 'package:rooster_game/src/utils/extension/string_ext.dart';

class GameAudioService {
  static final GameAudioService instance = GameAudioService._();

  GameAudioService._();

  final AudioPlayer _player = AudioPlayer();

  Future<void> playBackgroundMusic() async {
    await _player.setReleaseMode(
      ReleaseMode.loop,
    ); // зацикливаем
    await _player.play(
      AssetSource(
        Assets.audio.backgroundSound.withoutAssets,
      ),
    );
  }

  Future<void> stop() async {
    await _player.stop();
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> resume() async {
    await _player.resume();
  }
}
