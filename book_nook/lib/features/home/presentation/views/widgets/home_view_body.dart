import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/home/presentation/views/widgets/best_seller.dart';
import 'package:book_nook/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_nook/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:book_nook/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.v30),
                  child: CustomAppBar(),
                ),
                BooksListView(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.v30),
                  child: BestSeller(),
                ),
                SizedBox(height: AppValues.v20),
              ],
            ),
          ),
        ];
      },
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppValues.v30),
        child: BestSellerListView(),
      ),
    );
  }
}