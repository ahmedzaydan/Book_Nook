import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/service_locator.dart';
import 'package:book_nook/core/utils/theme_manager.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:book_nook/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_nook/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator(); // add dependency injection
  runApp(const BookNook());
}

class BookNook extends StatelessWidget {
  const BookNook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getItInstance<HomeRepo>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getItInstance<HomeRepo>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RoutesManager.router,
        debugShowCheckedModeBanner: false,
        theme: appDarkTheme,
      ),
    );
  }
}
