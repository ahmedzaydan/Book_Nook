part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitialState extends SimilarBooksState {}
class SimilarBooksLoadingState extends SimilarBooksState {}
class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccessState({required this.books});
  @override
  List<Object> get props => [books];
}

class SimilarBooksErrorState extends SimilarBooksState {
  final String errorMessage;
  const SimilarBooksErrorState({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}