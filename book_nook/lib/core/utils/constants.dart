import 'package:flutter/material.dart';

class Constants {
  // String
  static const String basePath = 'assets/images';
  static const String gtSectraFine = 'GT_Sectra_Fine';
  static const String gilroy = 'Gilroy';

  // Api
  static const String baseUrl = 'https://www.googleapis.com/books/v1/';
  static const String programmingCategory =
      'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming';
  static const String itemsField = 'items';
  static const String errorField = 'error';
  static const String messageField = 'message';
  static const String socketException = 'SocketException';

  // Int
  static const int slidingAnimationDurationInSeconds = 2;
  static const int splashScreenDelayInSeconds = 3;
  static const int transitionDurationInSeconds = 1;

  // Double
  static const double customBookImageAspectRatio = 2.6 / 4;

  // Offset
  static const Offset animationBegin = Offset(-0.5, 10);
  static const Offset animationEnd = Offset(0.2, 0);
}
