import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 40.0,
            ),
            CustomTextField(hintText: 'Title'),
            SizedBox(
              height: 20.0,
            ),
            CustomTextField(
              hintText: 'Contents',
              maxline: 6,
            )
          ],
        ),
      ),
    );
  }
}
