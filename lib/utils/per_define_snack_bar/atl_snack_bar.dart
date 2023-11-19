import 'package:atlsnackbar/utils/snack_bar/atl_custom_snackbar.dart';
import 'package:atlsnackbar/utils/snack_bar/content_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AtlSnackbarUtil {
  static void showSuccess({required String message, String title = ''}) {
    _showSnackbar(
      title: title.isEmpty ? 'Success' : title,
      message: message,
      contentType: ContentType.success,
    );
  }

  static void showHelp({required String message, String title = ''}) {
    _showSnackbar(
      title: title.isEmpty ? 'Help' : title,
      message: message,
      contentType: ContentType.help,
    );
  }

  static void showWarning({required String message, String title = ''}) {
    _showSnackbar(
      title: title.isEmpty ? 'Warning' : title,
      message: message,
      contentType: ContentType.warning,
    );
  }

  static void showError({required String message, String title = ''}) {
    _showSnackbar(
      title: title.isEmpty ? 'Error' : title,
      message: message,
      contentType: ContentType.failure,
    );
  }

  static void _showSnackbar({
    required String title,
    required String message,
    required ContentType contentType,
  }) {
    final ScaffoldMessengerState? messenger =
        Get.find<GlobalKey<ScaffoldMessengerState>>().currentState;

    if (messenger != null) {
      messenger.showSnackBar(SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AtlCustomSnackBar(
          title: title,
          message: message,
          contentType: contentType,
        ),
      ));
    }
  }
}
