import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var controller = MoneyMaskedTextController();

  Input(this.label, this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 100,
            alignment: Alignment.centerRight,
            child: Text(
              this.label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: "Big Shoulders Display"),
            )),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontFamily: "Big Shoulders Display"),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
