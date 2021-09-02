import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

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

    MLTextButton _bookButton(int index) {
      return MLTextButton(
        borderRadius: MLDefaults.rounded,
        onPressed: () => print("nothing here yet"),
        child: LabeledIcon(
          mainAxisAlignment: MainAxisAlignment.center,
          direction: Axis.vertical,
          icon: Icon(Icons.book),
          label: MLText(_bookList[index]),
        ),
      );
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
