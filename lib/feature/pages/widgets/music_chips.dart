import 'package:flutter/widgets.dart';

class MusicChips extends StatelessWidget {
  const MusicChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Recent"),
        Text("Top 50"),
        Text("R&B"),
        Text("Chill"),
        Text("Festival"),
        Text("Festival"),
        Text("Festival"),
      ],
    );
  }
}
