import '../../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class MyAddInfoWidget extends StatelessWidget {
  const MyAddInfoWidget({
    Key? key,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.flight,
    required this.comment,
  }) : super(key: key);
  final String fullName;
  final String email;
  final String phone;
  final String flight;
  final String comment;

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
              Text(LocaleKeys.client.tr()),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  fullName,
                  maxLines: 3,
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.email_p.tr()),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  email,
                  maxLines: 3,
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.phone_p.tr()),
              const SizedBox(width: 5),
              Text(
                phone,
                maxLines: 3,
                textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.flight.tr()),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  flight,
                  maxLines: 3,
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.comment.tr()),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  comment,
                  maxLines: 3,
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
