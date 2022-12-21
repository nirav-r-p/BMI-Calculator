import 'package:bmi_cal_app/bmi_calculator.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Age extends StatefulWidget {
  BMI_Calculator b;
  Age(this.b);
  @override
  State<Age> createState() => _AgeState(b);
}

class _AgeState extends State<Age> {
  double age = 100;
  BMI_Calculator b;
  _AgeState(this.b);
  @override
  Widget build(BuildContext context) {
    print('build age widget');
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 10,
          child: Column(children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${age.toStringAsFixed(0)}',
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      'year',
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
            ),
            SizedBox(
              height: 45,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Text(
                    'Age'.toUpperCase(),
                    style: TextStyle(color: Colors.black26),
                  ),
                  Slider(
                    value: age,
                    min: 2,
                    max: 100,
                    onChanged: (age) => setState(() {
                      this.age = age;
                      b.set_age(age);
                    }),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
