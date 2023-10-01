import 'package:bloc/bloc.dart';
import 'package:book_nook/features/home/data/models/kind/book.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo _homeRepo;
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitialState());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());

    var result = await _homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedBooksFailureState(failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccessState(books));
      },
    );
  }
}
