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
        children: list.asMap().entries.map((entry) {
          var isSelectedItem = (entry.key == selectedItemIndex);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                entry.value,
                style: TextStyle(
                  fontSize: 16,
                  color:
                      entry.key == selectedItemIndex ? Colors.white : lightGrey,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Container(
                    height: isSelectedItem ? 3 : 2,
                    width: 50,
                    decoration: const BoxDecoration(
                      gradient: purpleGradient,
                    ),
                  ),
                ],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
