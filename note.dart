class Note {
  String id;
  String title;
  String content;
  DateTime createdAt;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  Note.create({required this.title, required this.content})
      : id = DateTime.now().millisecondsSinceEpoch.toString(),
        createdAt = DateTime.now();
}