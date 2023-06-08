import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../models/responses/car/presentation_fee.dart';

class MyFeesWidget extends StatefulWidget {
  const MyFeesWidget({
    Key? key,
    required this.fees,
  }) : super(key: key);
  final List<PresentationFee> fees;

  @override
  State<MyFeesWidget> createState() => _MyFeesWidgetState();
}

class _MyFeesWidgetState extends State<MyFeesWidget> {
  bool isExpanded = true;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

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
              Text(
                LocaleKeys.fees.tr(),
                style: Global.errorText,
              ),
              IconButton(
                icon: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Global.getIconColor(context),
                ),
                onPressed: toggleExpanded,
              ),
            ],
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: SizedBox(
              height: isExpanded ? null : 0,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.fees.length,
                itemBuilder: (context, index) {
                  var item = widget.fees[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              item.name,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text("${item.price} ${item.currency}"),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}