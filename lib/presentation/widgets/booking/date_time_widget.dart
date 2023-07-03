import '../../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:rentmotors/utils/date_formatter.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({
    Key? key,
    required this.dateTime,
    required this.context,
    required this.onDatePress,
    required this.onTimePress,
  }) : super(key: key);

  final String dateTime;
  final BuildContext context;
  final ValueChanged<String> onDatePress;
  final ValueChanged<String> onTimePress;

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  String widgetMonthDay = "";
  String widgetWeekDay = "";
  String widgetTime = "";
  String widgetDateTime = "";

  @override
  void initState() {
    widgetMonthDay = DateFormatter.getMonthDayFormat(widget.dateTime);
    widgetWeekDay = DateFormatter.getWeekDayFormat(widget.dateTime);
    widgetTime = DateFormatter.getTimeFormat(widget.dateTime);
    widgetDateTime = widget.dateTime;
    super.initState();
  }

  @override
  void didUpdateWidget(DateTimeWidget oldWidget) {
    if (widget.dateTime != oldWidget.dateTime) {
      setState(() {
        widgetMonthDay = DateFormatter.getMonthDayFormat(widget.dateTime);
        widgetWeekDay = DateFormatter.getWeekDayFormat(widget.dateTime);
        widgetTime = DateFormatter.getTimeFormat(widget.dateTime);
      });
    }
    super.didUpdateWidget(oldWidget);
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: widget.context,
                  initialDate: DateFormatter.getDateTime(widget.dateTime),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData(
                        colorScheme: const ColorScheme.light(
                          primary: Global.darkGreen,
                        ),
                        buttonTheme: const ButtonThemeData(
                          textTheme: ButtonTextTheme.primary,
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
                if ((picked != null) && (picked.toString() != "")) {
                  setState(() {
                    widgetDateTime = replaceFirst8Characters(
                        widgetDateTime, DateFormatter.getDateFromDate(picked));
                  });
                  widget.onDatePress(widgetDateTime);
                }
              },
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
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: widget.context,
                initialTime: DateFormatter.getTime(widget.dateTime),
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData(
                      colorScheme: const ColorScheme.light(
                        primary: Global.darkGreen,
                      ),
                      buttonTheme: const ButtonThemeData(
                        textTheme: ButtonTextTheme.primary,
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if ((picked != null) && (picked.toString() != "")) {
                setState(() {
                  widgetDateTime = replaceLast4Characters(
                      widgetDateTime, DateFormatter.getTimeFromTime(picked));
                });
                widget.onDatePress(widgetDateTime);
              }
            },
            child: Container(
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