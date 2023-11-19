import 'package:atlsnackbar/constant/colors_const.dart';
import 'package:flutter/cupertino.dart';

/// to handle failure, success, help and warning `ContentType` class is being used
class ContentType {
  /// message is `required` parameter
  final String message;

  /// color is optional, if provided null then `DefaultColors` will be used
  final Color? color;

  const ContentType(this.message, [this.color]);

  static const ContentType help = ContentType('help', ColorsConst.helpBlue);
  static const ContentType failure =
      ContentType('failure', ColorsConst.failureRed);
  static const ContentType success =
      ContentType('success', ColorsConst.successGreen);
  static const ContentType warning =
      ContentType('warning', ColorsConst.warningYellow);
}