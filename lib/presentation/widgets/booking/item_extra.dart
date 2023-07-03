import '../../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class ItemExtra extends StatelessWidget {
  ItemExtra({
    Key? key,
    required this.name,
    required this.text,
    required this.price,
    required this.amount,
    required this.onTaped,
    required this.isCounted,
    required this.isSelected,
    required this.isShowField,
    required this.description,
    required this.textChanged,
  }) : super(key: key);

  final int amount;
  final String name;
  final String text;
  final String price;
  final bool isCounted;
  final bool isSelected;
  final bool isShowField;
  final String description;
  final VoidCallback onTaped;
  final ValueChanged<String> textChanged;
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    textController.text = text;
    textController.addListener(() {
      textChanged(textController.text);
    });

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: Global.extraText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    price,
                    style: Global.extraText,
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Text(
                description,
                style: Global.nanoText,
              ),
              if (isShowField)
                TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    filled: true,
                    hintStyle: Global.hintText,
                    hintText: LocaleKeys.enter_address.tr(),
                    contentPadding: const EdgeInsets.only(left: 10.0, right: 0,
                        top: 0, bottom: 0),
                  ),
                ),
              isShowField ?
              const SizedBox(height: 2.0) :
              const SizedBox(height: 5.0),
            ],
          ),
        ),
        const SizedBox(width: 20.0),
        !isCounted ?
        InkWell(
          onTap: onTaped,
          child: isSelected ?  Container(
            padding: EdgeInsets.zero,
            child: const Icon(
              Icons.check_circle,
              size: 34.0,
              color: Global.green,
            ),
          ) :
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Global.green : Global.getIconColor(context),
              ),
              child: const Center(),
            ),
          ),
        ) :
        GestureDetector(
          onTap: () {
            onTaped();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Global.green : Global.getIconColor(context),
              ),
              child: Center(
                child: Text(
                  amount.toString(),
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Global.backgroundLightTheme,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
