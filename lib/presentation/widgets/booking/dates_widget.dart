import '../../../res/global.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:rentmotors/utils/date_formatter.dart';
import 'package:easy_localization/easy_localization.dart';

class DatesWidget extends StatefulWidget {
  const DatesWidget({
    Key? key,
    required this.startDateTime,
    required this.endDateTime,
    required this.startLocation,
    required this.endLocation,
  }) : super(key: key);

  final String startDateTime;
  final String endDateTime;
  final String startLocation;
  final String endLocation;

  @override
  State<DatesWidget> createState() => _DatesWidgetState();
}

class _DatesWidgetState extends State<DatesWidget> {
  String widgetMonthDay = "";
  String widgetWeekDay = "";
  String widgetTime = "";

  String widgetEndMonthDay = "";
  String widgetEndWeekDay = "";
  String widgetEndTime = "";

  bool isExpanded = true;

  @override
  void initState() {
    widgetMonthDay = DateFormatter.getMonthDayFormat(widget.startDateTime);
    widgetWeekDay = DateFormatter.getWeekDayFormat(widget.startDateTime);
    widgetTime = DateFormatter.getTimeFormat(widget.startDateTime);

    widgetEndMonthDay = DateFormatter.getMonthDayFormat(widget.endDateTime);
    widgetEndWeekDay = DateFormatter.getWeekDayFormat(widget.endDateTime);
    widgetEndTime = DateFormatter.getTimeFormat(widget.endDateTime);
    super.initState();
  }

  @override
  void didUpdateWidget(DatesWidget oldWidget) {
    if (widget.startDateTime != oldWidget.startDateTime) {
      setState(() {
        widgetMonthDay = DateFormatter.getMonthDayFormat(widget.startDateTime);
        widgetWeekDay = DateFormatter.getWeekDayFormat(widget.startDateTime);
        widgetTime = DateFormatter.getTimeFormat(widget.startDateTime);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2.0,
          color: Global.getBorderColor(context),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.pickup_and_dropoff.tr(),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.startLocation,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widgetMonthDay,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widgetWeekDay,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          widgetTime,
                          style: const TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            height: 2,
                            color: Global.getBorderColor(context),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/pictures/GreenArrow.svg',
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.endLocation,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widgetEndMonthDay,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widgetEndWeekDay,
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          widgetEndTime,
                          style: const TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String replaceLast4Characters(String dateTimeString, String newTime) {
    final String dateString = dateTimeString.substring(0, 8);
    return '$dateString$newTime';
  }

  String replaceFirst8Characters(String dateTimeString, String newDate) {
    final String timeString = dateTimeString.substring(8, 12);
    return '$newDate$timeString';
  }
}
