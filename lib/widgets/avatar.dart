import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool DisplayStatus;
  final bool DisplayBorder;
  final double width;
  final double hight;

  const Avatar(
      {required this.displayImage,
      required this.DisplayStatus,
      this.DisplayBorder = false,
      this.hight = 50,
      this.width = 50});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if (DisplayStatus == true) {
      statusIndicator = Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1)),
          ));
    } else {
      statusIndicator = SizedBox();
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: DisplayBorder
                  ? Border.all(color: Colors.blueAccent, width: 4)
                  : Border()),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset(
              displayImage,
              width: width,
              height: hight,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
