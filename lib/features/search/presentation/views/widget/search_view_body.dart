import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/search_state.dart';
import 'package:bookly/features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widget/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'SearchResult',
            style: Styles.textStyle18,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchStateSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: BookListViewItem(
                  bookModels: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchStateLoading) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CustomShimmer();
            },
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
