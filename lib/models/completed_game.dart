import 'package:memory_lamp/models/verse.dart';

class CompletedGame {
  final Verse verse;
  final String name;
  final String time;

  const CompletedGame({
    required this.verse,
    required this.name,
    required this.time,
  });
}
