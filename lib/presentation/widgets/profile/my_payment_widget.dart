import '../../../res/global.dart';
import 'package:flutter/material.dart';

class MyPaymentWidget extends StatelessWidget {
  const MyPaymentWidget({
    Key? key,
    required this.label_1,
    required this.label_2,
    required this.value_1,
    required this.value_2,
  }) : super(key: key);
  final String label_1;
  final String label_2;
  final String value_1;
  final String value_2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Global.getBorderColor(context),
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label_1),
              Text(value_1),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label_2),
              Text(value_2),
            ],
          ),
        ],
      ),
    );
  }
}