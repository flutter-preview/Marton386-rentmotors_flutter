import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../widgets/booking/car_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModels/modify_res_view_model.dart';
import '../../viewModels/search_car_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rentmotors/utils/date_formatter.dart';
import '../../bloc/search_car_bloc/search_car_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../models/responses/car/presentation_car.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';

class SearchCarsPage extends StatefulWidget {
  const SearchCarsPage({Key? key, required this.nextAct}) : super(key: key);
  final ValueChanged<PresentationCar> nextAct;

  @override
  State<SearchCarsPage> createState() => _SearchCarsPageState();
}

typedef CarSelectionCallback = void Function(PresentationCar car);

class _SearchCarsPageState extends State<SearchCarsPage> {
  CarSelectionCallback? carSelectionCallback;
  final ModifyResViewModel modifyViewModel = GetIt
      .instance<ModifyResViewModel>();
  final SearchCarViewModel searchCarViewModel = GetIt
      .instance<SearchCarViewModel>();
  final RefreshController refreshController = RefreshController();

  @override
  void initState() {
    context.read<SearchCarBloc>().add(const SearchCarEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stateProfile = context.watch<SearchCarBloc>().state;
    return stateProfile.when(
      loaded: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    modifyViewModel.newReservation?.details.pickup.name ?? "",
                    style: Global.littleAppBarText,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${DateFormatter.getRightFormat(modifyViewModel
                        .newReservation?.details.pickupDate ?? "202301012000"
                    )} - ${DateFormatter.getRightFormat(modifyViewModel
                        .newReservation?.details.dropoffDate ?? "202301012000")}",
                    style: Global.littleAppBarText,
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: customRefresher(searchCarViewModel.searchCars?.cars ?? []),
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    modifyViewModel.newReservation?.details.pickup.name ?? "",
                    style: Global.littleAppBarText,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${DateFormatter.getRightFormat(modifyViewModel
                        .newReservation?.details.pickupDate ?? "202301012000"
                    )} - ${DateFormatter.getRightFormat(modifyViewModel
                        .newReservation?.details.dropoffDate ?? "202301012000")}",
                    style: Global.littleAppBarText,
                  ),
                ],
              ),
            ),
          ),
          body: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Global.darkGreen,
            ),
          ),
        );
      },
      nothingFound: () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    modifyViewModel.newReservation?.details.pickup.name ?? "",
                    style: Global.littleAppBarText,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${DateFormatter.getRightFormat(modifyViewModel
                        .newReservation?.details.pickupDate ?? "202301012000"
                    )} - ${DateFormatter.getRightFormat(modifyViewModel
                        .newReservation?.details.dropoffDate ?? "202301012000")}",
                    style: Global.littleAppBarText,
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: Text(
              LocaleKeys.no_available_cars.tr(),
              style: Global.headerText,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }

  Widget customRefresher(List<PresentationCar> currentList) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: false,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.nextAct(currentList[index]);
              Navigator.pop(context);
            },
            child: CarItem(car: currentList[index]),
          );
        },
        separatorBuilder: (_, int index) => const SizedBox(height: 5),
        itemCount: currentList.length,
      ),
    );
  }
}