part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoding extends NewsetBooksState {}

final class NewsetBooksFailuer extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksFailuer(this.errMessage);
}

final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModels> books;

  const NewsetBooksSuccess(this.books);
}
