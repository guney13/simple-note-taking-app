
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/components/my_drawer.dart';
import 'package:notes_app/components/note_tile.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/models/note_database.dart';
import 'package:provider/provider.dart';


class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    readNotes();
  }

  // create a note
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          autofocus: true,
          controller: textController,
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              context.read<NoteDatabase>().addNote(textController.text);
              Navigator.of(context).pop();
              textController.clear();
            },
            child: Text("Create"),
          ),
        ],
      ),
    );
  }

  // read notes
  void readNotes() {
    context.read<NoteDatabase>().fetchNotes();
  }

  // update a note
  void updateNote(Note note) {
    // pre-fill
    textController.text = note.text;
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Update Note"),
        content: TextField(
          autofocus: true,
          controller: textController,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              context.read<NoteDatabase>().updateNote(note.id, textController.text);
              textController.clear();
              Navigator.of(context).pop();
            },
            child: Text("Save"),
          ),
        ],
      )
    );
  }

  // delete a note
  void deleteNote(int id) {
    context.read<NoteDatabase>().deleteNote(id);
  }
  
  @override
  Widget build(BuildContext context) {
    final noteDatabase = context.watch<NoteDatabase>();
    List<Note> cNotes = noteDatabase.currentNotes;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 15.0,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: createNote,
        shape: CircleBorder(
          side: BorderSide(
            width: 1.8,
            color: Theme.of(context).colorScheme.surface,
          )
        ),
        child: Icon(
          Icons.add,
          size: 32,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),

      drawer: MyDrawer(),

      body: Column(
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Text(
              "Notes",
              style: GoogleFonts.dmSerifText(
                fontSize: 48,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          Expanded(
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              color: Theme.of(context).colorScheme.surface,
              
              child: ListView.builder(
                itemCount: cNotes.length,
                padding: const EdgeInsets.all(28.0),
                itemBuilder: (BuildContext context, int index) {
                  final note = cNotes[index];
                  return NoteTile(
                    text: note.text,
                    onEditPressed: () => updateNote(note),
                    onDeletePressed: () => deleteNote(note.id),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}