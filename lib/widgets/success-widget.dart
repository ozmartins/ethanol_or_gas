import 'package:flutter/material.dart';

import 'loading-button-widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function? reset;

  Success(this.result, this.reset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          LoadingButton(false, true, () {
            reset!();
          }, "CALCULAR NOVAMENTE"),
        ],
      ),
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
