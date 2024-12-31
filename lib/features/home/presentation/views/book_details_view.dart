import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:bookly/features/home/presentation/manger/cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModels});
  final BookModels bookModels;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimillarBooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModels.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          bookModels: widget.bookModels,
        ),
      ),
    );
  }
}
