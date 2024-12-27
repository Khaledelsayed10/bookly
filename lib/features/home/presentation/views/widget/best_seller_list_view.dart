import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
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
            ),
          );
        } else if (state is NewsetBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
