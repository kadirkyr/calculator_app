import 'package:calculator_app/product/const.dart';
import 'package:calculator_app/core/text_widget.dart';
import 'package:flutter/material.dart';

class CalculatorItems {
  List<Widget> rowFirst = [
    const TextWidget(text: ProjectStrings.allClear),
    const Icon(Icons.backspace_outlined),
    const TextWidget(text: ProjectStrings.percentange),
    const TextWidget(text: ProjectStrings.division)
  ];
  List<Widget> rowSecond = [
    const TextWidget(text: ProjectStrings.seven),
    const TextWidget(text: ProjectStrings.eight),
    const TextWidget(text: ProjectStrings.nine),
    const TextWidget(text: ProjectStrings.multiplication)
  ];
  List<Widget> rowThird = [
    const TextWidget(text: ProjectStrings.four),
    const TextWidget(text: ProjectStrings.five),
    const TextWidget(text: ProjectStrings.six),
    const TextWidget(text: ProjectStrings.subtraction)
  ];
  List<Widget> rowFourth = [
    const TextWidget(text: ProjectStrings.one),
    const TextWidget(text: ProjectStrings.two),
    const TextWidget(text: ProjectStrings.three),
    const TextWidget(text: ProjectStrings.addition)
  ];
  List<Widget> rowFifth = [
    const Icon(Icons.change_circle),
    const TextWidget(text: ProjectStrings.zero),
    const TextWidget(text: ProjectStrings.comma),
    const TextWidget(text: ProjectStrings.equals)
  ];
}
