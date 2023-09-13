import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NotesNiewBody extends StatelessWidget {
  const NotesNiewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 18,
        ),
        CustomAppBar(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: NotesListView())
      ],
    );
  }
}
