import 'package:bloc/bloc.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo _homeRepo;
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitialState());

  Future<void> fetchSimailarBooks({
    required String category,
  }) async {
    var result = await _homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) {
        emit(SimilarBooksErrorState(errorMessage: failure.message));
      },
      (books) {
        emit(SimilarBooksSuccessState(books: books));
      },
    );
  }
}
