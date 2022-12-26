import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/feature/pages/music_view.dart';
import 'package:music_app/models/music.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key, required this.musics});

  final List<Music> musics;

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceBetween,
        spacing: 24,
        children: musics
            .map(
              (music) => MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        music.banner,
                        fit: BoxFit.cover,
                        height: 56,
                        width: 56,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          music.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          music.artirts,
                          style: const TextStyle(
                            color: lightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    // Expanded(child: Container()),
                    Text(
                      music.duration,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  navigator.pushNamed(
                    MusicView.route,
                    arguments: music,
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
