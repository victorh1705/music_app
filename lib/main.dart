import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/feature/pages/home_page.dart';
import 'package:music_app/feature/pages/music_view.dart';
import 'package:music_app/feature/pages/playlist_page.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/models/playlist.dart';

import 'feature/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          iconTheme: const IconThemeData(color: Colors.white),
          primarySwatch: Colors.grey,
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle.light)),
      routes: {
        LoginPage.route: (context) => const LoginPage(),
        HomePage.route: (context) => const HomePage(),
        PlaylistPage.route: (context) {
          var playlist = ModalRoute.of(context)!.settings.arguments as Playlist;
          return PlaylistPage(playlist: playlist);
        },
        MusicView.route: (context) {
          var music = ModalRoute.of(context)!.settings.arguments as Music;
          return MusicView(music: music);
        }
      },
    );
  }
}
