import 'package:flutter/material.dart';

TextStyle recentMatchTextStyle() => const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
TextStyle noOfMatchTextStyle() => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.grey.shade400,
    );

TextStyle scoreAndWicketTextStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
);
TextStyle overTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.grey.shade400,
  fontWeight: FontWeight.w400,
);
TextStyle countryTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.grey.shade700,
  fontWeight: FontWeight.w400,
);
TextStyle wonTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.red.shade700,
  fontWeight: FontWeight.w600,
);
