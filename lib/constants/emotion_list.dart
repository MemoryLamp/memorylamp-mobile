import 'package:flutter/cupertino.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/ml_font.dart';

Image _emotionIcon(String _emotionName) {
  return Image.asset(
    AssetPaths.emotion(_emotionName),
    width: MLFont.large,
  );
}

const List<Verse> _verses = [
  Verse(
    book: "Genesis",
    chapter: 1,
    number: 1,
    verse:
        "Et consectetur ea et ut Lorem veniam culpa velit ea cillum Lorem esse ad nulla.",
  ),
  Verse(
    book: "Psalm",
    chapter: 19,
    number: 1,
    verse:
        "Nostrud veniam ea mollit aliqua dolore tempor in exercitation nulla ea.",
  )
];

const Verse _highlightVerse = Verse(
  book: "Isaiah",
  chapter: 26,
  number: 3,
  verse:
      "You keep him in perfect peace whose mind is stayed on you, because He trusts in you.",
);

List<Emotion> emotionsList = [
  Emotion(
    name: "Happy",
    image: _emotionIcon("happy.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Cheerful",
    image: _emotionIcon("cheerful.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Loved",
    image: _emotionIcon("loved.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Joyful",
    image: _emotionIcon("joyful.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Relief",
    image: _emotionIcon("relief.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Exhausted",
    image: _emotionIcon("exhausted.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Sad",
    image: _emotionIcon("sad.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Drained",
    image: _emotionIcon("drained.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Tired",
    image: _emotionIcon("tired.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Angry",
    image: _emotionIcon("angry.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Hopeless",
    image: _emotionIcon("hopeless.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
  Emotion(
    name: "Betrayed",
    image: _emotionIcon("betrayed.png"),
    verses: _verses,
    highlightVerse: _highlightVerse,
  ),
];
