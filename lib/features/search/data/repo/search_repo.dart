import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModels>>> fetchSearchResults(
      {required String searchWord});
}
