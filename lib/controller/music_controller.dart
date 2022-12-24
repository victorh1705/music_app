import 'package:flutter/material.dart';
import 'package:music_app/models/playlist.dart';

class MusicController extends InheritedNotifier<ValueNotifier<List<Playlist>>> {
  const MusicController({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
        );

  List<Playlist> get value => Playlist.data();

  static MusicController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MusicController>()!;
  }

  List<Playlist> getPlaylist() {
    return Playlist.data();
  }

  @override
  bool updateShouldNotify(MusicController oldWidget) {
    return value != oldWidget.value;
  }
}
