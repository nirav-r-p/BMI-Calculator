import 'package:bmi_cal_app/bmi_calculator.dart';
import '/Screens_widget/result_screen.dart';
import 'package:flutter/material.dart';
import '../module_widget/age_widget.dart';
import '../module_widget/heigth_widget.dart';
import '../module_widget/weight_widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //const MyHomePage({super.key});
  BMI_Calculator b = BMI_Calculator();

  @override
  Widget build(BuildContext context) {
    print('build home Screen');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'bmi calculater'.toUpperCase(),
          style: TextStyle(color: Colors.black26, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Age(b),
                  Weight(b),
                ],
              ),
            ),
            Heigth(b),
            Container(
              width: double.infinity,
              child: FloatingActionButton.extended(
                elevation: 4,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(b),
                    ),
                  );
                }),
                label: Text(
                  'submit'.toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
