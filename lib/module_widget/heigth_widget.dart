import 'package:bmi_cal_app/bmi_calculator.dart';
import 'package:flutter/material.dart';

class Heigth extends StatefulWidget {
  BMI_Calculator b;
  Heigth(this.b);
  @override
  State<Heigth> createState() => _HeigthState(b);
}

class _HeigthState extends State<Heigth> {
  double heigth = 200;
  BMI_Calculator b;
  _HeigthState(this.b);

  @override
  Widget build(BuildContext context) {
    print('build heigth weiget');
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 10,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      heigth.toStringAsFixed(2),
                      style: const TextStyle(color: Colors.black, fontSize: 38),
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(color: Colors.black26, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            //color: Colors.blueGrey,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 20,
              child: Slider(
                label: 'h',
                value: heigth,
                min: 20,
                max: 200,
                onChanged: ((heigth) => setState(
                      () {
                        this.heigth = heigth;
                        b.set_h(double.parse(heigth.toStringAsFixed(2)));
                      },
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
