import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturdBooksCubit(this.homeRepo) : super(FeaturdBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturdBooksLoding());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturdBooksFailue(failure.errMessage));
    }, (books) {
      emit(FeaturdBookSuccess(books));
    });
  }
}
