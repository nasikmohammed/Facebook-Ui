import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/widgets/appBar.dart';
import 'package:facebook_ui_1/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class storyCard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool DisplayBorder;
  const storyCard({
    required this.labeltext,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.DisplayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createStoryStatus
                  ? appBarButton(
                      buttonIcon: Icons.add,
                      iconcolor: Colors.blueAccent,
                      buttonAction: () {},
                    )
                  : Avatar(
                      displayImage: avatar,
                      DisplayStatus: false,
                      DisplayBorder: DisplayBorder,
                      width: 40,
                      hight: 40,
                    )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labeltext != null ? labeltext : 'N/A',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
