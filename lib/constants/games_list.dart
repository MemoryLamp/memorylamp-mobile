import 'package:flutter/material.dart';
import 'package:memory_lamp/models/game.dart';
import 'package:memory_lamp/screens/fill_in_the_blanks.dart';
import 'package:memory_lamp/screens/rearrange_to_memorize.dart';
import 'package:memory_lamp/screens/recite_this_verse.dart';

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
