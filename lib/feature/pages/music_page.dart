// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:music_app/constants/colors.dart';
import 'package:music_app/models/music.dart';

class MusicPage extends StatelessWidget {
  static get route => "/music";

  final Music music;
  final isPlaying = false;
  final bool isLiked;

  const MusicPage({
    Key? key,
    required this.music,
    this.isLiked = false,
  }) : super(key: key);

  AppBar _buildAppBar(NavigatorState navigator) {
    return AppBar(
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
    );
  }

  Widget _buildNamedAndDescription() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              music.name,
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
              music.artirts,
              style: const TextStyle(
                color: lightGrey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_outline,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildProgressBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const LinearProgressIndicator(
          value: 0.5,
          backgroundColor: lightGrey,
          color: Colors.white,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Play time",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
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
      ],
    );
  }

  Widget _buildPlayer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.shuffle,
          ),
          onPressed: () {},
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.skip_previous,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Container(
                height: 64,
                width: 64,
                decoration: const ShapeDecoration(
                  gradient: purpleGradient,
                  shape: CircleBorder(),
                ),
                child: MaterialButton(
                  child: const Icon(
                    Icons.play_arrow,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.skip_next,
              ),
              onPressed: () {},
            ),
          ],
        ),
        IconButton(
          icon: const Icon(
            Icons.repeat,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

    return Scaffold(
      appBar: _buildAppBar(navigator),
      backgroundColor: darkPurple,
      body: CustomPaint(
        painter: BackgroundPainter(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  music.banner,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              _buildNamedAndDescription(),
              const SizedBox(
                height: 40,
              ),
              _buildProgressBar(),
              const SizedBox(
                height: 60,
              ),
              _buildPlayer()
            ],
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
      Rect.fromLTWH(width - 200, -200, 400, 400),
      Paint()
        ..color = purple2.withOpacity(0.4)
        ..maskFilter = const MaskFilter.blur(
          BlurStyle.normal,
          50,
        ),
    );

    canvas.drawOval(
      Rect.fromLTWH(
        -150,
        height - 150,
        400,
        400,
      ),
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
