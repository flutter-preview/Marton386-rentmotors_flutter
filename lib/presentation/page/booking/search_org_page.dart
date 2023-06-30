import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../widgets/booking/org_item.dart';
import '../../widgets/search_text_field.dart';
import '../../viewModels/org_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../viewModels/booking_view_model.dart';
import '../../bloc/search_org_bloc/search_org_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../models/responses/suggestion/presentation_suggestion.dart';

class SearchOrgPage extends StatefulWidget {
  const SearchOrgPage({
    Key? key,
    required this.hint,
    required this.controller,
  }) : super(key: key);
  final String hint;
  final TextEditingController controller;

  @override
  State<SearchOrgPage> createState() => _SearchOrgPageState();
}

class _SearchOrgPageState extends State<SearchOrgPage> {
  final RefreshController refreshController = RefreshController();
  final OrgViewModel orgViewModel = GetIt.instance<OrgViewModel>();
  final BookingViewModel startBookingViewModel = GetIt
      .instance<BookingViewModel>();

  @override
  Widget build(BuildContext context) {
    final stateOrg = context.watch<SearchOrgBloc>().state;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.org.tr(),
            style: Global.justText,
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
                showClear: true,
                hintText: widget.hint,
                controller: widget.controller,
                searchSmg: () {
                  context
                      .read<SearchOrgBloc>()
                      .add(const SearchOrgEvent.fetch());
                },
              ),
            ),
            const SizedBox(height: 10),
            stateOrg.when(
              loading: () {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Global.darkGreen,
                    ),
                  ),
                );
              },
              loaded: () {
                return Expanded(
                  child: customRefresher(orgViewModel.list, context),
                );
              },
              error: (String str) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Center(
                    child: Text(
                      str,
                      style: Global.headerText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget customRefresher(
      List<PresentationSuggestion> currentList, BuildContext context) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: false,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return OrgItem(
            item: currentList[index],
            onItemTap: (PresentationSuggestion org) {
              startBookingViewModel.organization = org;
              widget.controller.text = org.data.name.shortWithOpf ?? "";
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
