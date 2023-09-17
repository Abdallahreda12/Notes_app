import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/edit_note_view.dart';

// ignore: must_be_immutable
class NoteItem extends StatelessWidget {
  NoteItem({super.key});

  DateTime dataNow = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return editeNoteView();
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xffffcc80),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Built your carrer with Abdallah Reda ",
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.trash),
                    color: Colors.black),
              ),
              Text(
                '${dataNow.month}/${dataNow.day}/${dataNow.year}',
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.8)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
