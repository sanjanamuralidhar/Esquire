import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Util {
  static void showSnackBar(String title, String message,
      {Duration duration}) async {
    if (duration != null)
      await Get.snackbar(title, message,
          duration: duration,
          colorText: Colors.red,
          barBlur: 0,
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.info,
            color: Colors.red,
          ));
    else
      await Get.snackbar(title, message,
          duration: Duration(seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY),
          backgroundColor: Colors.white,
          colorText: Colors.red,
          icon: Icon(
            Icons.info,
            color: Colors.red,
          ),
          barBlur: 0);
  }

  static void showSnackBar2(context, content) {
    final snackBar = SnackBar(content: LocalizedText(text: Text(content)));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
