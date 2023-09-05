import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({super.key, this.onPressed, this.color = Colors.white, this.widget});

  final void Function()? onPressed;
  final Color color;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.transparent)),
        height: MediaQuery.of(context).size.height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(shape: const BeveledRectangleBorder(), backgroundColor: color),
          child: widget,
        ),
      ),
    );
  }
}
