import 'package:book_nook/core/utils/strings_manager.dart';
import 'package:book_nook/core/utils/styles.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_nook/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:book_nook/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.v30),
                  child: CustomAppBar(),
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    top: AppValues.v20,
                    bottom: AppValues.v28,
                  ),
                  child: FeaturedBooksListView(),
                ),

                // best seller text
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppValues.v30),
                  child: Text(
                    StringsManager.newest,
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(height: AppValues.v20),
              ],
            ),
          ),
        ];
      },
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppValues.v30),
        child: NewestBooksListView(),
      ),
    );
  }
}
