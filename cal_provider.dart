import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final TextEditingController compController = TextEditingController();

  setVal(String val) {
    String str = compController.text;
    switch (val) {
      case 'AC':
        compController.clear();
        break;
      case "X":
        compController.text += '*';
        break;
      case "=":
        compute();
        break;
      default:
        compController.text += val;
    }
  }

  compute() {
    String str = compController.text;
    compController.text = str.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}
