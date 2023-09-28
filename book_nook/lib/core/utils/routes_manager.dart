import 'package:book_nook/features/home/presentation/views/book_details_view.dart';
import 'package:book_nook/features/home/presentation/views/home_view.dart';
import 'package:book_nook/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesManager {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      // splash screen
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),

      // home screen
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),

      // book details screen
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );

}