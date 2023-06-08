import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../res/generated/locale_keys.g.dart';
import '../../models/constants/extra_type.dart';
import '../../viewModels/modify_res_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../models/responses/car/presentation_extra.dart';
import 'package:rentmotors/presentation/widgets/booking/item_extra.dart';

import '../../viewModels/booking_view_model.dart';

class ExtrasWidget extends StatefulWidget {
  const ExtrasWidget({
    Key? key,
    required this.extrasNumber,
    this.updater,
  }) : super(key: key);
  final int extrasNumber;
  final VoidCallback? updater;

  @override
  State<ExtrasWidget> createState() => _ExtrasWidgetState();
}

class _ExtrasWidgetState extends State<ExtrasWidget> {
  bool isExpanded = true;
  final ModifyResViewModel modifyViewModel =
      GetIt.instance<ModifyResViewModel>();
  final BookingViewModel startBookViewModel =
  GetIt.instance<BookingViewModel>();
  List<PresentationExtra> extras = [];

  @override
  void initState() {
    if (widget.extrasNumber == 2) {
      extras = modifyViewModel.newReservation?.details.car.extras ?? [];
    } else {
      extras = startBookViewModel.car?.extras ?? [];
    }
    super.initState();
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
                itemCount: extras.length,
                itemBuilder: (context, index) {
                  var item = extras[index];
                  return ItemExtra(
                    name: item.name,
                    text: item.address ?? "",
                    amount: item.amount,
                    price: "${item.getShowPrice()} ${item.currency}",
                    isCounted: item.isMultiSelect(),
                    isSelected: item.isSelected(),
                    description: item.description,
                    isShowField: item.isInputVisible(),
                    onTaped: () {
                      int newAmount = item.amount + 1;
                      if (item.isChildSeat()) {
                        if (newAmount > 3) {
                          newAmount = 0;
                        }
                      } else {
                        if (newAmount > 1) {
                          newAmount = 0;
                        }
                      }

                      if (item.code == ExtraType.wheelInsurance) {
                        for (var ind in extras) {
                          if (ind.isSelected() && ind.code == ExtraType.fullCover) {
                            return;
                          }
                        }
                      }
                      if (item.code == ExtraType.fullCover) {
                        for (var ind in extras) {
                          if (ind.isSelected() && ind.code == ExtraType.wheelInsurance) {
                            return;
                          }
                        }
                      }
                      setState(() {
                        if (widget.extrasNumber == 2) {
                          modifyViewModel.newReservation?.details.car.extras[
                          index].amount = newAmount;
                        } else {
                          startBookViewModel.car?.extras[index]
                              .amount = newAmount;
                        }
                        if (widget.updater != null) {
                          widget.updater!();
                        }
                      });
                    },
                    textChanged: (String str) {
                      if (widget.extrasNumber == 2) {
                        modifyViewModel.newReservation?.details.car.extras[index]
                            .address = str;
                      } else {
                        startBookViewModel.car?.extras[index].address = str;
                      }
                    },
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
