import 'dart:io';
import '../res/global.dart';
import 'alerts_shower.dart';
import 'header_helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentmotors/res/generated/locale_keys.g.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';

class PDFUtil {
  static Future<void> downloadAndOpenPdf(String resId, String email,
      BuildContext context) async {
    try {
      Map<String, String> headers = {
        "x-token": HeaderHelper.rmToken,
        "x-lng": HeaderHelper.localeCode,
      };
      String url = "https://api.onlinefleet.ru/1.0/get_book_confirmation?res_id"
          "=$resId&email=$email&type=PDF";
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        final dir = await getApplicationDocumentsDirectory();
        final file = File('${dir.path}/voucher.pdf');
        await file.writeAsBytes(response.bodyBytes);
        final pdfController = PdfController(document: PdfDocument
            .openFile(file.path), initialPage: 1, viewportFraction: 2.0);
        // ignore: use_build_context_synchronously
        await showDialog(
          context: context,
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text(LocaleKeys.save_pdf.tr()),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.save_alt,
                    color: Global.getNewIconColor(context),
                  ),
                  onPressed: () async {
                    final params = SaveFileDialogParams(
                      sourceFilePath: file.path,
                      localOnly: true,
                    );
                    await FlutterFileDialog.saveFile(params: params);
                  },
                ),
              ],
            ),
            body: PdfView(controller: pdfController),
          ),
        );
      } else {
        // ignore: use_build_context_synchronously
        AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
        return;
      }
    } on HttpException catch (_) {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return ;
    } on SocketException {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return;
    } catch (e) {
      AlertsShower.showAlert(context, LocaleKeys.failure_get_data.tr());
      return;
    }
  }
}