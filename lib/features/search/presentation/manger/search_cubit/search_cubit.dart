import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchrepo) : super(SearchStateInit());
  final SearchRepo searchrepo;
  Future<void> fetchSearchResultCubitMethod(
      {required String searchWord}) async {
    emit(SearchStateLoading());
    var data = await searchrepo.fetchSearchResults(searchWord: searchWord);

    data.fold((faluire) {
      emit(SearchStateFaluire(faluire.errMessage));
    }, (books) {
      emit(SearchStateSuccess(books));
    });
  }
}
