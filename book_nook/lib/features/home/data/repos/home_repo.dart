import 'package:book_nook/core/errors/failures.dart';
import 'package:book_nook/features/home/data/models/kind/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}
