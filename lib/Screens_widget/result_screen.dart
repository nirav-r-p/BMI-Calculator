import 'package:bmi_cal_app/bmi_calculator.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  BMI_Calculator b;
  ResultScreen(this.b);
  // BMI_Calculater b = new BMI_Calculater();
  @override
  Widget build(BuildContext context) {
    print('build result Screen');
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
              ),
              Text(
                'your result'.toUpperCase(),
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(
                height: 35,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                child: Container(
                  width: double.infinity,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              b.getResult(),
                              style:
                                  TextStyle(fontSize: 48, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'BMI',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      b.health(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.white,
                onPressed: (() {
                  Navigator.pop(context);
                }),
                label: Text(
                  'Re-calculate'.toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
