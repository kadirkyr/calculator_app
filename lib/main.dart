import 'package:calculator_app/product/const.dart';
import 'package:calculator_app/view/calculator_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        iconTheme: const IconThemeData(size: 30, color: Colors.white),
        scaffoldBackgroundColor: ProjectColors.darkTheme,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          color: ProjectColors.darkTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CalculatorView(),
    );
  }
}
