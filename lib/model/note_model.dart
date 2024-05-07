import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String contents;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String color;

  NoteModel({
    required this.title,
    required this.contents,
    required this.color,
    required this.date,
  });

  factory NoteModel.fromJson(jsonData) {
    return NoteModel(
      title: jsonData['title'],
      contents: jsonData['content'],
      date: jsonData['date'],
      color: jsonData['color'],
    );
  }
}
