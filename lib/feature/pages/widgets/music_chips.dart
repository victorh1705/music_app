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

    Widget buildChip(String music, bool isSelectedItem) {
      return TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Text(
              music,
              style: TextStyle(
                fontSize: 16,
                color: isSelectedItem ? Colors.white : lightGrey,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: isSelectedItem ? 3 : 0,
              decoration: const BoxDecoration(
                gradient: purpleGradient,
              ),
              child: Row(
                children: [
                  Text(
                    music,
                    style: const TextStyle(color: Colors.transparent),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 32,
        children: list.asMap().entries.map(
          (entry) {
            var isSelectedItem = (entry.key == selectedItemIndex);

            return buildChip(entry.value, isSelectedItem);
          },
        ).toList(),
      ),
    );
  }
}
