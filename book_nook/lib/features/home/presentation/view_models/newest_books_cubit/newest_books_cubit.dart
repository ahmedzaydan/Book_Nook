import 'package:bloc/bloc.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo _homeRepo;
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitialState());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());

    var result = await _homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailureState(failure.message));
      },
      (books) {
        emit(NewestBooksSuccessState(books));
      },
    );
  }
}
