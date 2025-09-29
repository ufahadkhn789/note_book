import 'package:flutter/material.dart';
import '../models/note.dart';

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => [..._notes];

  void addNote(String title, String description) {
    final newNote = Note(
      id: DateTime.now().toString(),
      title: title,
      description: description,
    );
    _notes.add(newNote);
    notifyListeners();
  }

  void updateNote(String id, String title, String description) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index].title = title;
      _notes[index].description = description;
      notifyListeners();
    }
  }

  void deleteNote(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }

  Note? getNoteById(String id) {
    return _notes.firstWhere((note) => note.id == id, orElse: () => null as Note);
  }
}
