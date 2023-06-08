import 'package:get_it/get_it.dart';

import '../../res/global.dart';
import 'package:flutter/material.dart';
import '../../utils/alerts_shower.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/profile_bloc/profile_bloc.dart';
import '../viewModels/profile_view_model.dart';

class LoadButtonWidget extends StatelessWidget {
  LoadButtonWidget({
    Key? key,
    required this.text,
    required this.whatFunc,
    required this.checkAct,
    required this.navRoute,
    required this.buttonAct,
    required this.nothingFoundAct,
  }) : super(key: key);
  final String text;
  final int whatFunc;
  final String navRoute;
  final VoidCallback buttonAct;
  final bool Function() checkAct;
  final VoidCallback nothingFoundAct;
  final ProfileViewModel profViewModel = GetIt.instance<ProfileViewModel>();

  @override
  Widget build(BuildContext context) {
    final stateProfile = context.watch<ProfileBloc>().state;
    return stateProfile.when(
      loaded: () {
        return ElevatedButton(
          onPressed: () {
            if (checkAct()) {
              buttonAct();
              blocFunc(context, whatFunc);
            }
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(10.0),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
            backgroundColor: MaterialStateProperty.all<Color>(Global.orange),
            foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
          ),
          child: Text(text.toUpperCase()),
        );
      },
      successLoaded: () {
        if (profViewModel.reservation != null) {
          Future.delayed(Duration.zero, () => Navigator.pushNamed(context, navRoute));
        }
        return ElevatedButton(
          onPressed: () {
            if (checkAct()) {
              buttonAct();
              blocFunc(context, whatFunc);
            }
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(10.0),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
            backgroundColor: MaterialStateProperty.all<Color>(Global.orange),
            foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
          ),
          child: Text(text.toUpperCase()),
        );
      },
      loading: () {
        return ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(10.0),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
            backgroundColor: MaterialStateProperty.all<Color>(Global.orange),
            foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
          ),
          child: const CircularProgressIndicator(
            strokeWidth: 2,
            color: Global.darkGreen,
          ),
        );
      },
      nothingFound: () {
        Future.delayed(Duration.zero, () => nothingFoundAct());
        return ElevatedButton(
          onPressed: () {
            if (checkAct()) {
              buttonAct();
              blocFunc(context, whatFunc);
            }
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(10.0),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
            backgroundColor: MaterialStateProperty.all<Color>(Global.orange),
            foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
          ),
          child: Text(text.toUpperCase()),
        );
      },
      error: (String error) {
        Future.delayed(Duration.zero, () => AlertsShower.showAlert(context, error));
        return ElevatedButton(
          onPressed: () {
            if (checkAct()) {
              buttonAct();
              blocFunc(context, whatFunc);
            }
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(10.0),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
            backgroundColor: MaterialStateProperty.all<Color>(Global.orange),
            foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
          ),
          child: Text(text.toUpperCase()),
        );
      },
    );
  }

  void blocFunc(BuildContext context, int whatIsFunc) {
    switch (whatIsFunc) {
      case 1:
        context.read<ProfileBloc>().add(const ProfileEvent.fetch());
        break;
      default:
        context.read<ProfileBloc>().add(const ProfileEvent.fetch());
    }
  }
}