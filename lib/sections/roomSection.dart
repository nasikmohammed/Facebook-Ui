import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          CreateRoom(),
          Avatar(
            displayImage: wcmessi,
            DisplayStatus: true,
          ),
          Avatar(
            displayImage: mubashir,
            DisplayStatus: true,
          ),
          Avatar(
            displayImage: unaib,
            DisplayStatus: true,
          ),
          Avatar(
            displayImage: sali,
            DisplayStatus: true,
          ),
          Avatar(
            displayImage: fasil,
            DisplayStatus: false,
          ),
        ],
      ),
    );
  }

  Widget CreateRoom() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Color.fromARGB(255, 100, 151, 193))),
          ),
        ),
        onPressed: () {},
        icon: Icon(
          Icons.video_call,
          color: Colors.pink,
        ),
        label: Text(
          'Create \n Room',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
