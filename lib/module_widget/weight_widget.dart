import 'package:bmi_cal_app/bmi_calculator.dart';
import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  BMI_Calculator b;
  Weight(this.b);
  @override
  State<Weight> createState() => _WeightState(b);
}

class _WeightState extends State<Weight> {
  double weigth = 140;
  BMI_Calculator b;

  _WeightState(this.b);

  @override
  Widget build(BuildContext context) {
    print('build weigth widget');
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
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
                      '${weigth.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 26),
                    ),
                    Text(
                      'Kg',
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
                    'Weigth'.toUpperCase(),
                    style: TextStyle(color: Colors.black26),
                  ),
                  Slider(
                    value: weigth,
                    min: 0,
                    max: 140,
                    onChanged: (weigth) => setState(() {
                      this.weigth = weigth;
                      b.set_w(double.parse(weigth.toStringAsFixed(2)));
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
