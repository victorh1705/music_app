import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1563089145-599997674d42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Fell the beat",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Emmerse yourself into the world of music today",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 200,
                  decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      gradient: LinearGradient(colors: [
                        const Color(0xff9D1DCA),
                        const Color(0xff842ED8),
                        const Color(0xffDB28A9),
                        const Color(0xff9D1DCA),
                      ])),
                  child: MaterialButton(
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 90,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
