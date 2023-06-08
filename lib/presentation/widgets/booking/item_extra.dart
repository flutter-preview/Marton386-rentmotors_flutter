import '../../../res/global.dart';
import 'package:flutter/material.dart';

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
              const SizedBox(height: 5.0),
              if (isShowField)
                TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10.0),
                    filled: true,
                    hintStyle: Global.searchText,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 20.0),
        //const Spacer(),
        !isCounted
            ? InkWell(
          onTap: onTaped,
          child: Container(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.check_circle,
              size: 34.0,
              color: isSelected ? Global.green : Global.getIconColor(context),
            ),
          ),
        )
            : GestureDetector(
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
