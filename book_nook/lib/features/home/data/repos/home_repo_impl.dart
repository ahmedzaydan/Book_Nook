import 'package:book_nook/core/errors/failures.dart';
import 'package:book_nook/core/utils/api_service.dart';
import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/end_points.dart';
import 'package:book_nook/features/home/data/models/book_kind/book_model.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServiceClient _apiService;
  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var response = await _apiService.get(
        endPoint: '${Constants.freeEBooksPath}&q=${EndPoints.programming}',
      );
      List<BookModel> books = [];
      for (var item in response[Constants.itemsField]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(dioException: e),
        );
      }
      return left(
        ServerFailure(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var response = await _apiService.get(
        endPoint:
            '${Constants.freeEBooksPath}&Sorting=newest&q=${EndPoints.programming}',
      );
      List<BookModel> books = [];
      for (var item in response[Constants.itemsField]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(dioException: e),
        );
      }
      return left(
        ServerFailure(message: e.toString()),
      );
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var response = await _apiService.get(
        endPoint:
            '${Constants.freeEBooksPath}&Sorting=relevance&q=${EndPoints.programming}',
      );
      List<BookModel> books = [];
      for (var item in response[Constants.itemsField]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(dioException: e),
        );
      }
      return left(
        ServerFailure(message: e.toString()),
      );
    }
  }
}
