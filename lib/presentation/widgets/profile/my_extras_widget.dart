import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../models/responses/car/presentation_extra.dart';

class MyExtrasWidget extends StatefulWidget {
  const MyExtrasWidget({
    Key? key,
    required this.extras,
  }) : super(key: key);
  final List<PresentationExtra> extras;

  @override
  State<MyExtrasWidget> createState() => _MyExtrasWidgetState();
}

class _MyExtrasWidgetState extends State<MyExtrasWidget> {
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
                LocaleKeys.additional_options.tr(),
                style: Global.errorText,
              ),
              IconButton(
                icon: Icon(
                  isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
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
                itemCount: widget.extras.length,
                itemBuilder: (context, index) {
                  var item = widget.extras[index];
                  return (item.amount != 0)
                      ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item.name),
                          Text("X${item.amount}"),
                          Text("${item.price} ${item.currency}"),
                        ],
                      ),
                      if (item.address != null)
                        Text(
                          item.address ?? "",
                          style: Global.searchText,
                        ),
                      const SizedBox(height: 8),
                    ],
                  )
                      : Container();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
