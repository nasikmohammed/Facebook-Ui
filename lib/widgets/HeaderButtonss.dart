import 'package:flutter/material.dart';

Widget hederButton({
  required String buttonText,
  required IconData ButtonIcon,
  required Function() buttonAction,
  required Color Buttoncolor,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      ButtonIcon,
      color: Buttoncolor,
    ),
    label: Text(
      buttonText,
      style: TextStyle(color: Colors.black),
    ),
  );
  VerticalDivider(
    thickness: 1,
    color: Colors.grey,
  );
}
