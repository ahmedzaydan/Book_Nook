import 'package:book_nook/core/errors/failures.dart';
import 'package:book_nook/core/utils/api_service.dart';
import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/end_points.dart';
import 'package:book_nook/features/home/data/models/kind/book.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServiceClient _apiService;
  HomeRepoImpl(this._apiService);

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var response = await _apiService.get(
        endPoint:
            '${Constants.baseRequestWithSorting}/${EndPoints.programming}',
      );
      List<Book> books = response[Constants.itemsField];
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
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var response = await _apiService.get(
        endPoint: '${Constants.baseRequest}/${EndPoints.programming}',
      );
      List<Book> books = [];
      for (var item in response[Constants.itemsField]) {
        books.add(Book.fromJson(item));
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
