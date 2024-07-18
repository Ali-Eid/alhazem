import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String toFormattedString() {
    return DateFormat('dd-MM-yyyy').format(this);
  }
}

extension DateStringFormatter on String {
  String formatDateString(BuildContext context) {
    DateTime dateTime = DateTime.parse(this);
    return '${DateFormat('yMMMMd', context.locale.languageCode).format(dateTime)} - ${DateFormat('jm', context.locale.languageCode).format(dateTime)}';
  }
}
