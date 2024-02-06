import 'package:facebook_ui_1/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class sugetionCard extends StatelessWidget {
  final String avatar;
  final String Name;
  final String MutualFriends;
  final Function() addFriend;
  final Function() RemoveFriens;

  const sugetionCard(
      {required this.avatar,
      required this.Name,
      required this.MutualFriends,
      required this.RemoveFriens,
      required this.addFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          SuggetionImage(),
          sugetionDetails(),
        ],
      ),
    );
  }

  Widget SuggetionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: avatar != null
                ? Image.asset(
                    avatar,
                    fit: BoxFit.cover,
                  )
                : SizedBox()));
  }

  Widget sugetionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          height: 125,
          color: Color.fromARGB(255, 232, 228, 228),
          child: Column(
            children: [
              ListTile(
                title: Text(Name != null ? Name : ''),
                subtitle: Text(MutualFriends != Null ? MutualFriends : ''),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    iconButton(
                      buttonAction: addFriend,
                      buttonIcon: Icons.group_add_sharp,
                      buttonIconColor: Colors.white,
                      buttontext: 'Add Friend',
                      buttonTextColor: Colors.white,
                      buttonColor: Colors.blue,
                    ),
                    BlankButton(
                        buttonAction: RemoveFriens,
                        buttonText: 'Remove',
                        buttonColor: Color.fromARGB(255, 146, 146, 146),
                        buttonTextColor: Colors.black),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget BlankButton({
    required Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return OutlinedButton(
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor),
        ));
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttontext,
  }) {
    return ElevatedButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttontext,
        style: TextStyle(color: buttonTextColor),
      ),
      onPressed: buttonAction,
    );
  }
}
