import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';

import '../constants/temp_hardcoded_data.dart';
import '../widgets/reusable/book_button.dart';

class BooksView extends StatelessWidget {
  const BooksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.1,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        padding: MLDefaults.screenPadding,
        itemCount: bookList.length,
        itemBuilder: (BuildContext context, int index) {
          return BookButton(bookList[index]);
        },
      ),
    );
  }
}
