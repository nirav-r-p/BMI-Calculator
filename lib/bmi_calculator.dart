import 'dart:math';

import 'package:flutter/material.dart';

class BMI_Calculator {
  double weigth = 140;
  double heigth = 200;
  double age = 100;
  double bmi = 0;
  double healthy_weigth = 0;
  double healthy_w = 0;
  void set_w(double weigth) {
    this.weigth = weigth;
  }

  void set_h(double heigth) {
    this.heigth = heigth / 100;
  }

  void set_age(double age) {
    this.age = age;
  }

  String getResult() {
    bmi = double.parse(((weigth / (heigth * heigth))).toStringAsFixed(2));
    healthy_weigth = weigth - (24 * pow(heigth, 2));
    healthy_w = (18.5 * pow(heigth, 2)) - weigth;
    return bmi.toString();
  }

  Widget health() {
    if (bmi <= 15) {
      return Column(
        children: [
          const Text(
            'Very Severely Underweight',
            style: TextStyle(color: Colors.redAccent, fontSize: 14),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'To healthy weigth',
            style: TextStyle(color: Colors.green, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'You  should gain ${healthy_w.toStringAsFixed(2)}Kg weigth',
            style: const TextStyle(color: Colors.green, fontSize: 14),
          )
        ],
      );
    } else if (bmi > 15 && bmi <= 16) {
      return Column(
        children: [
          const Text(
            'Severely Underweight',
            style: TextStyle(color: Colors.redAccent, fontSize: 14),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'To healthy weigth',
            style: TextStyle(color: Colors.green, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'You  should gain ${healthy_w.toStringAsFixed(2)} weigth',
            style: const TextStyle(color: Colors.green, fontSize: 14),
          )
        ],
      );
    } else if (bmi > 16 && bmi <= 18.5) {
      return Column(
        children: [
          const Text(
            'Underweight',
            style: TextStyle(color: Colors.redAccent, fontSize: 14),
          ),
          Text(
            'To healthy weigth you gain ${healthy_w.toStringAsFixed(2)} weigth',
            style: const TextStyle(color: Colors.green, fontSize: 14),
          )
        ],
      );
    } else if (bmi > 18.5 && bmi <= 25) {
      return const Text(
        'healthy weight ❤️👍',
        style: TextStyle(color: Colors.green, fontSize: 14),
      );
    } else {
      return Column(
        children: [
          const Text(
            'Overweight 😰',
            style: TextStyle(color: Colors.red, fontSize: 14),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'To healthy weigth',
            style: TextStyle(color: Colors.green, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'You should loose ${healthy_weigth.toStringAsFixed(2)}Kg weigth',
            style: const TextStyle(color: Colors.green, fontSize: 14),
          )
        ],
      );
    }
  }
}
