import 'package:flutter/material.dart';
import 'package:invoice/core/constants/colors/colors.dart';

class InvoiceThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    colorScheme: const ColorScheme.dark(),



  );
   static final lightTheme = ThemeData(
    scaffoldBackgroundColor: kWhite,
    colorScheme: const ColorScheme.light(),
   );
}
