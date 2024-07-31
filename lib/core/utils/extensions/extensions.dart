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

extension PlaceOfBirthParser on String {
  String get placeOfBirth {
    // Split the input string into parts
    List<String> parts = split(' ');

    // Ensure there are at least two parts
    if (parts.length < 2) {
      throw const FormatException('Input string is not in the expected format');
    }

    // The place of birth is everything before the last part
    return parts.sublist(0, parts.length - 1).join(' ');
  }
}

extension DateOfBirthParser on String {
  String get dateOfBirth {
    // Split the input string into parts
    List<String> parts = split(' ');

    // Ensure there are at least two parts
    if (parts.length < 2) {
      throw const FormatException('Input string is not in the expected format');
    }

    // The date of birth is the last part
    return parts.last;
  }
}
