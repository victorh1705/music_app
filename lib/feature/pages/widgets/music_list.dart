import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/models/music.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key, required this.musics});

  final List<Music> musics;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Your Favorite",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Wrap(
          direction: Axis.vertical,
          spacing: 24,
          children: musics
              .map((music) => Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                music.artirts,
                                style: const TextStyle(
                                    color: lightGrey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        music.duration,
                        style: const TextStyle(
                            color: lightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }
}
