import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/feature/pages/widgets/music_chips.dart';
import 'package:music_app/feature/pages/widgets/music_list.dart';
import 'package:music_app/feature/pages/widgets/playlist_banner.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/models/playlist.dart';

class HomePage extends StatelessWidget {
  static get route => "/homeView";

  List<Playlist> get playlists => Playlist.data();
  List<Music> get musics => Music.data();

  const HomePage({super.key});

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Welcome back!",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "What do you like today?",
          style: TextStyle(
            color: lightGrey,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildSearchField() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        filled: true,
        fillColor: darkGrey,
        prefixIcon: Icon(Icons.search),
        prefixIconColor: lightGrey,
        focusColor: darkGrey,
        hintText: "Search for song, artirts, playlist ...",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundPainter(),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: 64,
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(
                  height: 24,
                ),
                _buildSearchField(),
                const SizedBox(
                  height: 40,
                ),
                MusicChips(),
                const SizedBox(
                  height: 24,
                ),
                PlaylistBanner(playlists: playlists),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Your Favorites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                MusicList(musics: musics),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = darkPurple;
    canvas.drawPath(mainBackground, paint);

    canvas.drawOval(
      const Rect.fromLTWH(-170, 275, 500, 500),
      Paint()
        ..color = purple2.withOpacity(0.4)
        ..maskFilter = const MaskFilter.blur(
          BlurStyle.normal,
          50,
        ),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
