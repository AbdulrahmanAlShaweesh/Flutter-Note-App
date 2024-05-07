class NoteModel {
  final String title;
  final String contents;

  NoteModel({
    required this.title,
    required this.contents,
  });

  factory NoteModel.fromJson(jsonData) {
    return NoteModel(
      title: jsonData['title'],
      contents: jsonData['content'],
    );
  }
}
