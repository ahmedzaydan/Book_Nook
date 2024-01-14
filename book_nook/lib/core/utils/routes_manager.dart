import 'package:book_nook/core/utils/service_locator.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:book_nook/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_nook/features/home/presentation/views/book_details_view.dart';
import 'package:book_nook/features/home/presentation/views/home_view.dart';
import 'package:book_nook/features/search/presentation/views/search_view.dart';
import 'package:book_nook/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesManager {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';

  static final router = GoRouter(
    routes: [
      // splash screen
      GoRoute(
        path: splashView,
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
        builder: (context, state) {
          // when close this screen the bloc will disposed
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getItInstance<HomeRepo>()),
            child: BookDetailsView(bookModel: state.extra as BookModel),
          );
        },
      ),

      // search screen
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
