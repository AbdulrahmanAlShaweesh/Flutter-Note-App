class NoteModel {
  final String title;
  final String contents;
  final String date;
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
