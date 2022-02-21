import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';

class BooksView extends StatelessWidget {
  const BooksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _bookList = [
      "Genesis",
      "Exodus",
      "Leviticus",
      "Numbers",
      "Deutronomy",
      "Joshua",
      "Judges",
      "Ruth",
      "1 Samuel",
      "2 Samuel",
      "1 Kings",
      "2 Kings",
      "1 Chronicles",
      "2 Chronicles",
      "Ezra",
    ];

    TextButton _bookButton(int index) {
      return TextButton(
        onPressed: () => print("nothing here yet"),
        style: TextButton.styleFrom(
          shape: MLDefaults.roundedRectangle,
        ),
        child: LabeledIcon(
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.vertical,
          icon: const Icon(Icons.book),
          label: Text(_bookList[index]),
        ),
      );
    }

    return SafeArea(
      child: Padding(
        padding: MLDefaults.screenPadding,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: _bookList.length,
          itemBuilder: (BuildContext context, int index) {
            return _bookButton(index);
          },
        ),
      ),
    );
  }
}
