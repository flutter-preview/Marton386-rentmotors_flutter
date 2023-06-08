import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import '../../widgets/map/station_item.dart';
import 'package:flutter/material.dart';
import '../../widgets/search_text_field.dart';
import '../../viewModels/station_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../models/responses/presentation_station.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class StationsPage extends StatefulWidget {
  const StationsPage({
    super.key,
    required this.onPress
  });
  final VoidCallback onPress;

  @override
  State<StationsPage> createState() => _StationsPageState();
}

class _StationsPageState extends State<StationsPage> {
  final RefreshController refreshController = RefreshController();
  final StationViewModel stationViewModel = GetIt.instance<StationViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/pictures/RMNavBar.png',
            width: Global.logoWith,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SearchTextField(
                showIcon: true,
                hintText: LocaleKeys.enter_city_name.tr(),
                controller: stationViewModel.stationController,
                searchSmg: () {
                  setState(() {
                    stationViewModel.updateFilteredStations();
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: customRefresher(stationViewModel.filteredStations, context),
            ),
          ],
        ),
      ),
    );
  }

  Widget customRefresher(
      List<PresentationStation> currentList, BuildContext context) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: false,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return StationItem(
            item: currentList[index],
            onItemTap: (int id) {
              widget.onPress();
              stationViewModel.selectStation(id);
            },
          );
        },
        separatorBuilder: (_, int index) => Divider(
          color: Global.getItemIconColor(context),
          thickness: 1,
        ),
        itemCount: currentList.length,
      ),
    );
  }
}
