import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/ml_font.dart';

import '../models/completed_game.dart';
import '../models/game.dart';
import '../models/icon_label_pair.dart';
import '../screens/games/fill_in_the_blanks.dart';
import '../screens/games/rearrange_to_memorize.dart';
import '../screens/games/recite_this_verse.dart';

List<Game> gameList = [
  Game(
    name: "Fill In The Blanks",
    icon: Icons.speaker_group_outlined,
    routeName: FillInTheBlanksScreen.routeName,
  ),
  Game(
    name: "Recite This Verse",
    icon: Icons.speaker_group_outlined,
    routeName: ReciteThisVerseScreen.routeName,
  ),
  Game(
    name: "Rearrange To Memorize",
    icon: Icons.speaker_group_outlined,
    routeName: RearrangeToMemorizeScreen.routeName,
  ),
];

Image _emotionIcon(String _emotionName) {
  return Image.asset(
    AssetPaths.emotion(_emotionName),
    width: MLFont.large,
  );
}

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

List<CompletedGame> completedGames = List.generate(20, (index) {
  return CompletedGame(
    verse: Verse(
      book: "Genesis",
      chapter: 1,
      number: index,
      verse: "Hello",
    ),
    name: "Fill in the Blanks",
    time: "01:5$index",
  );
});

const Verse sampleHardcodedVerse = Verse(
  book: "Psalm",
  chapter: 119,
  number: 1,
  verse:
      "Blessed are they whose ways are blameless, who walk according to the law of the LORD. Blessed are they who keep his statutes and seek him with all their heart. ... I will praise you with an upright heart as I learn your righteous laws.",
);

const List<Verse> _verses = [
  sampleHardcodedVerse,
  sampleHardcodedVerse,
  sampleHardcodedVerse,
  sampleHardcodedVerse,
  sampleHardcodedVerse,
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
