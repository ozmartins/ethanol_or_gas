import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 80,
      ),
      Image.asset(
        "assets/images/aog-white.png",
        height: 80,
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Álcool ou gasolina",
        style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Big Shoulders Display"),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
