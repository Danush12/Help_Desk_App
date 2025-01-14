import 'package:flutter/material.dart';
import 'package:helpdesk/core/config/theme/color_manager.dart';

void showMessage(
  BuildContext context,
  String message,
) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.blue,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showErrorMessage(
  BuildContext context,
  String message,
) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: ColorManager.red,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

    margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 20), // Adjust the top margin to position it below the app bar
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
