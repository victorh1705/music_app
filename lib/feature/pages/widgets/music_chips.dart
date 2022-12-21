import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';

class MusicChips extends StatelessWidget {
  const MusicChips({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedItemIndex = 0;

    const list = [
      "Recent",
      "Top 50",
      "R&B",
      "Chill",
      "Festival",
      "Festival",
      "Festival",
      "Festival",
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 32,
        children: list
            .asMap()
            .entries
            .map((entry) => Text(
                  entry.value,
                  style: TextStyle(
                    fontSize: 16,
                    color: entry.key == selectedItemIndex
                        ? Colors.white
                        : lightGrey,
                    decoration: entry.key == selectedItemIndex
                        ? TextDecoration.underline
                        : TextDecoration.none,
                    decorationThickness: 3,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
