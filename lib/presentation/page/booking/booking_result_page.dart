import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import '../../../utils/pdf_util.dart';
import 'package:flutter/material.dart';
import '../../../utils/pkpass_util.dart';
import '../../../utils/date_formatter.dart';
import '../../widgets/next_button_widget.dart';
import '../../viewModels/booking_view_model.dart';
import '../../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class BookingResultPage extends StatefulWidget {
  const BookingResultPage({Key? key}) : super(key: key);

  @override
  State<BookingResultPage> createState() => _BookingResultPageState();
}

class _BookingResultPageState extends State<BookingResultPage>
    with WidgetsBindingObserver {
  final BookingViewModel bookViewModel = GetIt.instance<BookingViewModel>();
  late bool isAlreadyBooked;
  bool loadVoucher = false;
  bool loadPDF = false;

  @override
  void initState() {
    isAlreadyBooked = (bookViewModel.bookResult?.status == 1);
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      setState(() {
        loadVoucher = false;
      });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.completion_booking.tr(),
          style: Global.justText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (isAlreadyBooked)
                      Text(
                        LocaleKeys.booking_finished.tr(),
                        style: Global.switchText,
                      ),
                    if (isAlreadyBooked)
                      const SizedBox(height: 30),
                    if (isAlreadyBooked)
                      Text(
                        LocaleKeys.we_are_waiting_you.tr(),
                        style: Global.switchText,
                      ),

                    if (!isAlreadyBooked)
                      Text(
                        LocaleKeys.booking_almost_finished.tr(),
                        style: Global.switchText,
                      ),
                    if (!isAlreadyBooked)
                      const SizedBox(height: 30),
                    if (!isAlreadyBooked)
                      Text(
                        LocaleKeys.pick_up_car.tr(),
                        style: Global.switchText,
                      ),

                    const SizedBox(height: 10),
                    Text(
                      DateFormatter.getRightFormat(bookViewModel
                          .startBookingDate),
                      style: Global.headerText,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      bookViewModel.startStation?.address ?? "",
                      style: Global.headerText,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      LocaleKeys.you_booking_number.tr(),
                      style: Global.switchText,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      bookViewModel.bookResult?.resId ?? "",
                      style: Global.numberStyleText,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      LocaleKeys.pick_up_info.tr(),
                      style: Global.switchText,
                    ),

                    if (isAlreadyBooked)
                      const SizedBox(height: 40),
                    if (isAlreadyBooked)
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            LocaleKeys.voucher.tr(),
                            style: Global.switchText,
                          ),
                          const Spacer(),
                        ],
                      ),
                    if (isAlreadyBooked)
                      const SizedBox(height: 30),
                    if (isAlreadyBooked)
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () async {
                              if (!loadVoucher && !loadPDF) {
                                setState(() {
                                  loadVoucher = true;
                                });
                                if (bookViewModel.bookResult?.resId != null) {
                                  await PkpassUtil.downloadAndOpenPkpass(
                                    bookViewModel.bookResult?.resId ?? "",
                                    bookViewModel.emailController.text,
                                    context,
                                  );
                                }
                                setState(() {
                                  loadVoucher = false;
                                });
                              }
                            },
                            child: !loadVoucher ? Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 13,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Global.getButtonPDFBackgroundColor(
                                    context),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/pictures/wallet.png',
                                    width: 40,
                                  ),
                                  const SizedBox(width: 5.0),
                                  Text(
                                    LocaleKeys.add_to_wallet.tr(),
                                    style: Global.getTextWalletStyle(context),
                                  ),
                                ],
                              ),
                            ) : Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 17,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Global.getButtonPDFBackgroundColor(
                                    context),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Global.darkGreen,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                          GestureDetector(
                            onTap: () async {
                              if(!loadPDF && !loadVoucher) {
                                setState(() {
                                  loadPDF = true;
                                });
                                if (bookViewModel.bookResult?.resId != null) {
                                  await PDFUtil.downloadAndOpenPdf(
                                    bookViewModel.bookResult?.resId ?? "",
                                    bookViewModel.emailController.text,
                                    context,
                                  );
                                }
                                setState(() {
                                  loadPDF = false;
                                });
                              }
                            },
                            child: !loadPDF ? Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 40,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Global.getButtonPDFBackgroundColor(
                                    context),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                LocaleKeys.save_pdf.tr(),
                                style: Global.getTextPDFStyle(context),
                              ),
                            ) : Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 45,
                                vertical: 20,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Global.getButtonPDFBackgroundColor(
                                    context),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Global.darkGreen,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            NextButtonWidget(
              text: LocaleKeys.completion_booking.tr(),
              nextAct: () {
                if (!loadVoucher && !loadPDF) {
                  bookViewModel.clearModel();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    "mainPage", (Route<dynamic> route) => false,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}