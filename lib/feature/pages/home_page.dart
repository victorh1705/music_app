import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/feature/pages/widgets/music_chips.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var header =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Welcome back!",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(
        height: 8,
      ),
      const Text(
        "What do you like today?",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
      )
    ]);

    var searchField = TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, style: BorderStyle.none),
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          filled: true,
          fillColor: darkGrey,
          prefixIcon: Icon(Icons.search),
          prefixIconColor: lightGrey,
          focusColor: darkGrey,
          hintText: "Search for song, artirts, playlist ..."),
    );

    return Scaffold(
      backgroundColor: const Color(0xff0f0817),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Padding(
            padding: const EdgeInsets.only(top: 64),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              header,
              const SizedBox(
                height: 24,
              ),
              searchField,
              SizedBox(
                height: 40,
              ),
              MusicChips(),
              SizedBox(
                height: 24,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
