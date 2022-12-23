import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/feature/pages/playlist_page.dart';
import 'package:music_app/models/playlist.dart';

class PlaylistBanner extends StatelessWidget {
  const PlaylistBanner({super.key, required this.playlists});

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 24,
        children: playlists
            .map(
              (playlist) => MaterialButton(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        playlist.banner,
                        fit: BoxFit.cover,
                        height: 200,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      playlist.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      playlist.description,
                      style: const TextStyle(
                        color: lightGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  navigator.push(
                    MaterialPageRoute(
                      builder: ((context) => PlaylistPage(playlist: playlist)),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
