part of 'featurd_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturdBooksInitial extends FeaturedBooksState {}

final class FeaturdBooksLoding extends FeaturedBooksState {}

final class FeaturdBookSuccess extends FeaturedBooksState {
  final List<BookModels> books;

  const FeaturdBookSuccess(this.books);
}

final class FeaturdBooksFailue extends FeaturedBooksState {
  final String errMessage;

  const FeaturdBooksFailue(this.errMessage);
}
