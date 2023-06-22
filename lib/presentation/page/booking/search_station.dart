import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../widgets/map/station_item.dart';
import '../../widgets/search_text_field.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../viewModels/booking_view_model.dart';
import '../../models/responses/presentation_station.dart';

class SearchStation extends StatefulWidget {
  const SearchStation({
    Key? key,
    required this.controller,
    required this.hint,
    required this.searchSmg,
    required this.showList,
  }) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final bool showList;
  final VoidCallback searchSmg;

  @override
  State<SearchStation> createState() => _SearchStationState();
}

class _SearchStationState extends State<SearchStation> {
  final BookingViewModel startBookViewModel =
  GetIt.instance<BookingViewModel>();

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/pictures/logo.png',
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
                hintText: widget.hint,
                controller: widget.controller,
                searchSmg: () {
                  setState(() {
                    if (widget.showList) {
                      startBookViewModel.updateFilteredStartStations();
                    } else {
                      startBookViewModel.updateFilteredEndStations();
                    }
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: customRefresher((widget.showList) ? startBookViewModel.filteredStartStations :
                  startBookViewModel.filteredEndStations, context),
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
              if (widget.showList) {
                startBookViewModel.selectStartStation(id);
              } else {
                startBookViewModel.selectEndStation(id);
              }
              Navigator.pop(context);
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