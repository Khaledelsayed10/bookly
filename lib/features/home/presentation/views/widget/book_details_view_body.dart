import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModels});
  final BookModels bookModels;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  book: bookModels,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
