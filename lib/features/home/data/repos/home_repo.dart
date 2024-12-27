import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModels>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModels>>> fetchSimillerBooks(
      {required String category});
}
