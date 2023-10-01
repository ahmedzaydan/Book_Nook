import 'package:flutter/material.dart';

class Constants {
  static const String basePath = 'assets/images';
  static const String gtSectraFine = 'GT_Sectra_Fine';
  static const String gilroy = 'Gilroy';
  static const int slidingAnimationDurationInSeconds = 2;
  static const int splashScreenDelayInSeconds = 3;
  static const int transitionDurationInSeconds = 1;
  static const double customBookImageAspectRatio = 2.6 / 4;

  // Offset
  static const Offset animationBegin = Offset(-0.5, 10);
  static const Offset animationEnd = Offset(0.2, 0);

  // Api constants
  static const String baseUrl = 'https://www.googleapis.com/books/v1/';
  static const String filter = 'free-ebooks';
  static const String sorting = 'newest';
  static const String baseRequest = 'volumes?Filtering=$filter&q=subject:';
  static const String baseRequestWithSorting =
      '$baseRequest&Sorting=$sorting&q=subject:';
  static const String itemsField = 'items';
  static const String errorField = 'error';
  static const String messageField = 'message';
  static const String socketException = 'SocketException';
}
