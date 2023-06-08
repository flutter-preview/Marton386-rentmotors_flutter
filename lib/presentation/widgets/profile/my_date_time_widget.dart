import '../../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class MyDateTimeWidget extends StatelessWidget {
  const MyDateTimeWidget({
    Key? key,
    required this.namePlace,
    required this.timeRes,
  }) : super(key: key);
  final String namePlace;
  final String timeRes;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.place.tr()),
              const SizedBox(width: 10),
              Expanded(child: Text(namePlace, maxLines: 2,
                textAlign: TextAlign.end,)),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.time.tr()),
              Text(timeRes),
            ],
          ),
        ],
      ),
    );
  }
}