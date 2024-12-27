part of 'similer_books_cubit.dart';

sealed class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

final class SimilerBooksInitial extends SimilerBooksState {}

final class SimilerBooksLoding extends SimilerBooksState {}

final class SimilerBooksSuccess extends SimilerBooksState {
  final List<BookModels> books;

  const SimilerBooksSuccess(this.books);
}

final class SimilerBooksFailuer extends SimilerBooksState {
  final String errMessage;

  const SimilerBooksFailuer(this.errMessage);
}
