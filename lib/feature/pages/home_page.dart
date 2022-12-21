import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f0817),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Padding(
            padding: const EdgeInsets.only(top: 64),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Welcome back!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "What do you like today?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.0, style: BorderStyle.none),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    filled: true,
                    fillColor: lightGrey,
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: darkGrey,
                    focusColor: darkGrey,
                    hintText: "Search for song, artirts, playlist ..."),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
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
              ),
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
