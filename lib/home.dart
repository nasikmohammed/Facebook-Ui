import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/sections/headerButton.dart';
import 'package:facebook_ui_1/sections/roomSection.dart';
import 'package:facebook_ui_1/sections/status%20section.dart';
import 'package:facebook_ui_1/sections/storyRoomSection.dart';
import 'package:facebook_ui_1/sections/suggectionSection.dart';
import 'package:facebook_ui_1/widgets/Bluetick.dart';
import 'package:facebook_ui_1/widgets/HeaderButtonss.dart';
import 'package:facebook_ui_1/widgets/PostCard.dart';
import 'package:facebook_ui_1/widgets/appBar.dart';
import 'package:facebook_ui_1/widgets/avatar.dart';

import 'package:flutter/material.dart';

class screenhome extends StatelessWidget {
  const screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 27, fontWeight: FontWeight.bold),
          ),
          actions: [
            appBarButton(
                buttonIcon: Icons.search_rounded,
                buttonAction: () {
                  print('serchinggggg....');
                }),
            appBarButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print('CHat');
                })
          ],
        ),
        body: ListView(
          children: [
            statusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            HeaderButton(
              buttonOne: hederButton(
                  buttonAction: () {},
                  ButtonIcon: Icons.video_call,
                  Buttoncolor: Colors.red,
                  buttonText: 'Live'),
              buttonTwo: hederButton(
                  buttonText: ' Photo',
                  ButtonIcon: Icons.photo_library,
                  buttonAction: () {},
                  Buttoncolor: Colors.green),
              buttonThree: hederButton(
                  buttonText: 'Room',
                  ButtonIcon: Icons.video_call,
                  buttonAction: () {},
                  Buttoncolor: Colors.pink),
            ),
            Divider(
              thickness: 10,
            ),
            RoomSection(),
            Divider(
              thickness: 10,
            ),
            storySection(),
            Divider(
              thickness: 10,
            ),
            postCard(
              name: 'Unaibsha',
              avatar: unaib,
              publishedAT: "12 Apr",
              PostTItle: '',
              PostImage: unupost,
              showBluetick: false,
              likeCount: '1239',
              comentCount: '127',
              shareCount: '51',
            ),
            postCard(
              name: 'Tovino Thomas',
              avatar: tovino,
              publishedAT: "4 May",
              PostTItle:
                  'ARM is an upcoming Malayalam movie. The movie is directed by Jithin Lal and will feature Tovino Thomas, Krithi Shetty, .',
              PostImage: tovinost,
              showBluetick: true,
              likeCount: '25K',
              comentCount: '5K',
              shareCount: '986',
            ),
            suggetionSection(),
            Divider(
              thickness: 5,
            ),
            postCard(
              name: 'EdenHazard10',
              avatar: hazarrd,
              publishedAT: "10 Dec",
              PostTItle:
                  'Retirement is not the end .its just a begining\nTo Be Honestly I am Tired',
              PostImage: hazstory,
              showBluetick: true,
              likeCount: '264 K',
              comentCount: '15K',
              shareCount: '10K',
            ),
            postCard(
              name: 'zaheer KV',
              avatar: zhr,
              publishedAT: "30 Apr",
              PostTItle:
                  'A successful marriage requires falling in love many times, always with the same person',
              PostImage: zhrst,
              showBluetick: false,
              likeCount: '1348',
              comentCount: '210',
              shareCount: '38',
            ),
            postCard(
              name: 'Leomessi',
              avatar: wcmessi,
              publishedAT: "22 Dec 2022",
              PostTItle:
                  'When you Are part of a World Cup, its always now or never \n Vamoosss!!!',
              PostImage: mestory,
              showBluetick: true,
              likeCount: '1.8 M',
              comentCount: '105 K',
              shareCount: '56 K',
            ),
          ],
        ),
      ),
    );
  }
}
