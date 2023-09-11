import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class NotesNiewBody extends StatelessWidget {
  const NotesNiewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 18,
        ),
        CustomAppBar()
      ],
    );
  }
}
