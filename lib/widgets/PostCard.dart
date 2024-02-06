import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/sections/headerButton.dart';
import 'package:facebook_ui_1/widgets/Bluetick.dart';
import 'package:facebook_ui_1/widgets/HeaderButtonss.dart';
import 'package:facebook_ui_1/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class postCard extends StatelessWidget {
  final String name;
  final String avatar;
  final String publishedAT;
  final String PostTItle;
  final String PostImage;
  final bool showBluetick;
  final String likeCount;
  final String shareCount;
  final String comentCount;

  const postCard(
      {required this.avatar,
      required this.name,
      required this.publishedAT,
      required this.PostTItle,
      required this.PostImage,
      this.showBluetick = false,
      required this.likeCount,
      required this.shareCount,
      required this.comentCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCardHeader(),
          titleSection(),
          imageSection(),
          foooterSection(),
          Divider(
            thickness: 2,
          ),
          HeaderButton(
              buttonOne: hederButton(
                  buttonText: 'Like',
                  ButtonIcon: Icons.thumb_up,
                  buttonAction: () {},
                  Buttoncolor: Colors.grey),
              buttonTwo: hederButton(
                  buttonText: 'Coment',
                  ButtonIcon: Icons.comment,
                  buttonAction: () {},
                  Buttoncolor: Colors.grey),
              buttonThree: hederButton(
                  buttonText: 'Share',
                  ButtonIcon: Icons.share,
                  buttonAction: () {},
                  Buttoncolor: Colors.grey)),
          Divider(
            thickness: 5,
          )
        ],
      ),
    );
  }

  Widget PostCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        DisplayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: 5,
          ),
          showBluetick ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAT == null ? '' : publishedAT),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            color: Colors.grey,
            size: 13,
          )
        ],
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
    );
  }

  Widget titleSection() {
    return PostTItle != null && PostTItle != ''
        ? Container(
            padding: EdgeInsets.all(10),
            child: Text(PostTItle == null ? "" : PostTItle,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
          )
        : SizedBox();
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 5,
        left: 5,
      ),
      child: Image.asset(PostImage),
    );
  }

  Widget foooterSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                displayText(label: comentCount),
                SizedBox(
                  width: 6,
                ),
                displayText(label: 'Coments'),
                SizedBox(
                  width: 4,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: 'shares'),
                SizedBox(
                  width: 5,
                ),
                Avatar(
                  displayImage: avatar,
                  DisplayStatus: false,
                  width: 25,
                  hight: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  displayText({required String label}) {
    return Text(
      label == null ? '' : label,
      style: TextStyle(color: Colors.grey),
    );
  }
}
