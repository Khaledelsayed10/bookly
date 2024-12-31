import 'package:bookly/features/home/data/models/book_models/book_models.dart';

class SearchState {}

class SearchStateInit extends SearchState {}

class SearchStateFaluire extends SearchState {
  final String errorMessage;
  SearchStateFaluire(this.errorMessage);
}

class SearchStateLoading extends SearchState {}

class SearchStateSuccess extends SearchState {
  final List<BookModels> books;
  SearchStateSuccess(this.books);
}
