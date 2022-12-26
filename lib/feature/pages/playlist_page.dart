import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/feature/pages/widgets/music_list.dart';
import 'package:music_app/models/playlist.dart';

class PlaylistPage extends StatelessWidget {
  static get route => "/playlist";

  final Playlist playlist;

  const PlaylistPage({super.key, required this.playlist});

  Widget _buildHeader() {
    return Container(
      height: 340,
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: 0.3,
          image: NetworkImage(playlist.banner),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 70,
        ),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  playlist.description,
                  style: const TextStyle(
                    color: lightGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.favorite_border,
                  size: 24,
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 52,
                  width: 52,
                  decoration: const ShapeDecoration(
                    gradient: purpleGradient,
                    shape: CircleBorder(),
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(16),
                    child: const Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

    return Scaffold(
      backgroundColor: darkPurple,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
          ),
          padding: const EdgeInsets.all(24),
          enableFeedback: false,
          onPressed: () {
            navigator.pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          _buildHeader(),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: MusicList(musics: playlist.musics),
          ),
        ],
      ),
    );
  }
}
