import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';

import '../models/icon_label_pair.dart';
import '../widgets/reusable/book_button.dart';

class BooksView extends StatelessWidget {
  const BooksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconLabelPair> bookList = const [
      IconLabelPair(name: "Genesis", icon: Icons.book),
      IconLabelPair(name: "Exodus", icon: Icons.book),
      IconLabelPair(name: "Leviticus", icon: Icons.book),
      IconLabelPair(name: "Numbers", icon: Icons.book),
      IconLabelPair(name: "Deutronomy", icon: Icons.book),
      IconLabelPair(name: "Joshua", icon: Icons.book),
      IconLabelPair(name: "Judges", icon: Icons.book),
      IconLabelPair(name: "Ruth", icon: Icons.book),
      IconLabelPair(name: "1 Samuel", icon: Icons.book),
      IconLabelPair(name: "2 Samuel", icon: Icons.book),
      IconLabelPair(name: "1 Kings", icon: Icons.book),
      IconLabelPair(name: "2 Kings", icon: Icons.book),
      IconLabelPair(name: "1 Chronicles", icon: Icons.book),
      IconLabelPair(name: "2 Chronicles", icon: Icons.book),
      IconLabelPair(name: "Ezra", icon: Icons.book),
    ];

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
