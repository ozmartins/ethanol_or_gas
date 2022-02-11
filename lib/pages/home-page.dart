import 'package:ethanol_or_gas/widgets/logo-widget.dart';
import 'package:ethanol_or_gas/widgets/submit-form.dart';
import 'package:ethanol_or_gas/widgets/success-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gasController = MoneyMaskedTextController();

  var ethanolController = MoneyMaskedTextController();

  var busy = false;

  var completed = false;

  var resultText = "Compensa usar álcool";

  Color color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          color: color,
          child: ListView(
            children: <Widget>[
              const Logo(),
              completed
                  ? Success(resultText, () {
                      reset();
                    })
                  : SubmitForm(
                      gasController, ethanolController, busy, calculate)
            ],
          ),
        ));
  }

  Future calculate() async {
    double ethanol = double.parse(
            ethanolController.text.replaceAll(new RegExp(r'[,.]'), "")) /
        100;

    double gas =
        double.parse(gasController.text.replaceAll(new RegExp(r'[,.]'), "")) /
            100;

    double result = ethanol / gas;

    setState(() {
      completed = false;
      busy = true;
      color = Colors.deepPurpleAccent;
    });

    return Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (result >= 0.7) {
          resultText = "Compensa utilizar Gasolina";
        } else {
          resultText = "Compensa utilizar Álcool";
        }
      });

      busy = false;
      completed = true;
    });
  }

  void reset() async {
    setState(() {
      gasController = MoneyMaskedTextController();
      ethanolController = MoneyMaskedTextController();
      completed = false;
      busy = false;
      color = Colors.deepPurple;
    });
  }
}
