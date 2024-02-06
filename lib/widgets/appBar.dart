import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class appBarButton extends StatelessWidget {
  appBarButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconcolor: Colors.black,
  });
  final IconData buttonIcon;
  final Function() buttonAction;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 239, 233, 233), shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(buttonIcon),
        color: iconcolor,
      ),
    );
  }
}
