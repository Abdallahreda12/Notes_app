import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 18,
        ),
        CustomAppBar(
          title: "Notes",
          icon: Icons.search,
        ),
        Expanded(child: NotesListView())
      ],
    );
  }
}
