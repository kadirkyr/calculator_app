import 'package:calculator_app/core/calc_button.dart';
import 'package:calculator_app/core/text_widget.dart';
import 'package:calculator_app/product/calculator_items.dart';
import 'package:calculator_app/product/const.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});
  final String displayedValue = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ProjectColors.darkTheme,
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined))],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [DisplayView(displayedValue: displayedValue), const ButtonsView(), const Spacer(flex: 1)],
        ));
  }
}

class DisplayView extends StatefulWidget {
  const DisplayView({
    super.key,
    required this.displayedValue,
  });

  final String displayedValue;

  @override
  State<DisplayView> createState() => _DisplayViewState();
}

class _DisplayViewState extends State<DisplayView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: ProjectPaddings.rightPadding,
              child: TextWidget(
                text: widget.displayedValue,
                size: ProjectSizes.size3x,
              ),
            ),
            Divider(color: ProjectColors.purple, height: ProjectSizes.size, thickness: 5, indent: 20, endIndent: 20),
          ],
        ));
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 20,
      child: Column(
        children: [
          RowWidget(list: CalculatorItems().rowFirst, color: ProjectColors.light, color2: ProjectColors.light),
          RowWidget(list: CalculatorItems().rowSecond, color: ProjectColors.light, color2: ProjectColors.darkTheme),
          RowWidget(list: CalculatorItems().rowThird, color: ProjectColors.light, color2: ProjectColors.darkTheme),
          RowWidget(list: CalculatorItems().rowFourth, color: ProjectColors.purple, color2: ProjectColors.darkTheme),
          RowWidget(list: CalculatorItems().rowFifth, color: ProjectColors.purple, color2: ProjectColors.darkTheme),
        ],
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.list,
    required this.color,
    required this.color2,
    this.onPressed,
  });

  final List list;
  final Color color;
  final Color color2;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          list.length,
          (index) {
            return CalcButton(
              onPressed: () {},
              color: index == 3 ? color : color2,
              widget: list[index],
            );
          },
        ),
      ),
    );
  }
}
