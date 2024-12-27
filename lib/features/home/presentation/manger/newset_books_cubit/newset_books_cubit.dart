import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoding());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewsetBooksFailuer(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
