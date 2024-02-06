import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/widgets/avatar.dart';
import 'package:flutter/material.dart';

class statusSection extends StatelessWidget {
  const statusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: nasikh,
        DisplayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
            hintText: 'Write something here...എന്തെങ്കിലും എഴുതൂ...',
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
