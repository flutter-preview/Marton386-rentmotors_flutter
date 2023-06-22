import 'di/di_coordinator.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rentmotors/res/global.dart';
import 'res/generated/codegen_loader.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentmotors/utils/header_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';
import 'package:rentmotors/presentation/page/main_page.dart';
import 'package:rentmotors/presentation/page/profile/modify_res_page.dart';
import 'package:rentmotors/presentation/page/booking/new_booking_page.dart';
import 'package:rentmotors/presentation/bloc/station_bloc/station_bloc.dart';
import 'package:rentmotors/presentation/page/booking/booking_result_page.dart';
import 'package:rentmotors/presentation/page/profile/my_reservation_page.dart';
import 'package:rentmotors/presentation/page/booking/booking_details_page.dart';
import 'package:rentmotors/presentation/page/booking/regular_booking_page.dart';
import 'package:rentmotors/presentation/bloc/search_car_bloc/search_car_bloc.dart';
import 'package:rentmotors/presentation/page/booking/booking_search_car_page.dart';
import 'package:rentmotors/presentation/bloc/modify_res_bloc/modify_res_bloc.dart';
import 'package:rentmotors/presentation/bloc/new_booking_bloc/new_booking_bloc.dart';
import 'package:rentmotors/presentation/bloc/my_reservation_bloc/my_reservation_bloc.dart';
import 'package:rentmotors/presentation/bloc/regular_booking_bloc/regular_booking_bloc.dart';

void main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupGetIt();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_)
  {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final HeaderHelper headerHelper = GetIt.instance<HeaderHelper>();

  @override
  Widget build(BuildContext context) {
    headerHelper.initHelper(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: MaterialColor(Global.primaryLightTheme.value, Global.lightMap),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Global.green,
          selectionColor: Global.green,
          selectionHandleColor: Global.green,
        ),
        scaffoldBackgroundColor: Global.backgroundLightTheme,
        textTheme: Global.lightTextTheme,
      ),
      darkTheme: ThemeData(
        primarySwatch: MaterialColor(Global.primaryDarkTheme.value, Global.darkMap),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Global.green,
          selectionColor: Global.green,
          selectionHandleColor: Global.green,
        ),
        scaffoldBackgroundColor: Global.backgroundDarkTheme,
        textTheme: Global.darkTextTheme,
      ),
      routes: {
        'mainPage': (context) => BlocProvider(
          create: (context) => StationBloc(),
          child: const MainPage(),
        ),
        'mainPage/myRes': (context) => BlocProvider(
            create: (context) => MyReservationBloc(),
            child: const MyReservationPage(),
        ),
        'mainPage/myRes/modRes': (context) => BlocProvider(
          create: (context) => ModifyResBloc(),
          child: const ModifyResPage(),
        ),
        'mainPage/searchCars': (context) => BlocProvider(
          create: (context) => SearchCarBloc(),
          child: const BookingSearchCarPage(),
        ),
        'mainPage/searchCars/chooseExtras': (context) =>
        const BookingDetailsPage(),
        'mainPage/searchCars/chooseExtras/regularBook': (context) =>
          BlocProvider(
            create: (context) => RegularBookingBloc(),
            child: const RegularBookingPage(),
          ),
        'mainPage/searchCars/chooseExtras/regularBook/newBook': (context) =>
          BlocProvider(
            create: (context) => NewBookingBloc(),
            child: const NewBookingPage(),
          ),
        'mainPage/searchCars/chooseExtras/regularBook/doneBook': (context) =>
        const BookingResultPage(),
      },
      initialRoute: 'mainPage',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
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
            body: Center(
              child: Text(
                LocaleKeys.error_label.tr(),
              ),
            ),
          );
        });
      },
    );
  }
}