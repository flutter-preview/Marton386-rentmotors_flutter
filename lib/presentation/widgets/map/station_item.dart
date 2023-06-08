import '../../../res/global.dart';
import 'package:flutter/material.dart';
import '../../models/responses/presentation_station.dart';

class StationItem extends StatelessWidget {
  const StationItem({
    super.key,
    required this.item,
    required this.onItemTap,
  });
  final PresentationStation item;
  final ValueChanged<int> onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () {
        onItemTap(item.id);
      },
      title: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${item.getCity()},\n${item.getLocationName()}',
                  style: Global.justText,
                  maxLines: 2,
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.phone,
                          style: Global.justText,
                        ),
                        const SizedBox(width: 25.0),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Global.getItemIconColor(context),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Text(
              item.address,
              style: Global.getTextItemStyle(context),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
