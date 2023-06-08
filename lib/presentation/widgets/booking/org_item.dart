import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../models/responses/suggestion/presentation_suggestion.dart';

class OrgItem extends StatelessWidget {
  const OrgItem({
    super.key,
    required this.item,
    required this.onItemTap,
  });
  final PresentationSuggestion item;
  final ValueChanged<PresentationSuggestion> onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () {
        onItemTap(item);
      },
      title: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.data.name.shortWithOpf ?? "",
              style: Global.justText,
              maxLines: 2,
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                Text(
                  item.data.inn,
                  style: Global.getTextItemStyle(context),
                ),
                const SizedBox(width: 5),
                const Spacer(),
                Expanded(
                  child: Text(
                    item.data.address.value,
                    style: Global.getTextItemStyle(context),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
