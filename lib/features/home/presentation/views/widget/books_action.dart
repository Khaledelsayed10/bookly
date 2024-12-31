import 'package:bookly/core/utils/function/launcher_url.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:bookly/features/home/data/models/book_models/book_models.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModels});
  final BookModels bookModels;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            text: '19.99 €',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              launchCustomUr(context, bookModels.volumeInfo.previewLink);
            },
            fontSize: 16,
            text: 'Free preview ',
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        )
      ],
    );
  }
}
