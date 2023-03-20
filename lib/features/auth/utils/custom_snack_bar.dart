import 'package:flutter/material.dart';
import 'package:testzone/features/settings/color_schemes.dart';

class CustomSnackBar {
  static Future<void> show(
    BuildContext context,
    String message, {
    required bool error,
  }) async {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor:
          error ? AppColorScheme.errorColor : AppColorScheme.okColor,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
