import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input-widget.dart';
import 'loading-button-widget.dart';

class SubmitForm extends StatelessWidget {
  SubmitForm(this.gasolinaController, this.alcoolController, this.busy,
      this.submitFunc,
      {Key? key})
      : super(key: key);

  var gasolinaController = MoneyMaskedTextController();
  var alcoolController = MoneyMaskedTextController();
  var busy = false;
  Function? submitFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input("Gasolina", gasolinaController),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input("Álcool", alcoolController),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(busy, false, submitFunc, "CALCULAR")
      ],
    );
  }
}
