import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimillarBooksCubit extends Cubit<SimilerBooksState> {
  SimillarBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilerBooksLoding());
    var result = await homeRepo.fetchSimillerBooks(category: category);
    result.fold((failure) {
      emit(SimilerBooksFailuer(failure.errMessage));
    }, (books) {
      emit(SimilerBooksSuccess(books));
    });
  }
}
