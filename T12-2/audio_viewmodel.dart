import 'package:flutter/foundation.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioViewModel extends ChangeNotifier {
  static AudioCache _audioCache = AudioCache(prefix: 'images/');
  AudioPlayer _player = AudioPlayer();

  bool _isPlaying = false;
  Duration _currentTime = Duration();
  Duration _totalTime = Duration(milliseconds: 1);

  bool get isPlaying => _isPlaying;

  Duration get currentTime => _currentTime;

  Duration get totalTime => _totalTime;

  Future loadData() async {
    _player = await _audioCache.play('furelise.mp3');

    var stream;
    stream = _player.onDurationChanged.listen((Duration d) {
      _totalTime = d;
      stream.cancel();
      _player.pause();
      notifyListeners();
    });

    _player.onAudioPositionChanged.listen((Duration position) {
      print(position);
      if (position.compareTo(_totalTime) >= 0) {
        _player.stop();
        _currentTime = Duration();
        _isPlaying = false;
      } else {
        _currentTime = position;
      }
      notifyListeners();
    });

    _player.onPlayerStateChanged.listen((PlayerState s) {
      if (s == PlayerState.COMPLETED) {
        _isPlaying = false;
        _currentTime = Duration();
        notifyListeners();
      }
    });
  }

  Future onPlayStateChanged(bool isPlaying) async {
    if (isPlaying) {
      await _player.resume();
    } else {
      await _player.pause();
    }
    _isPlaying = isPlaying;
    notifyListeners();
  }

  void seek(Duration position) async {
    await _player.seek(position);
  }
}
