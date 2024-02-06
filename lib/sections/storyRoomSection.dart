import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class storySection extends StatelessWidget {
  storySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyCard(
            labeltext: 'Create \n story',
            avatar: nasikh,
            story: nasikh,
            createStoryStatus: true,
          ),
          storyCard(
            labeltext: 'LeoMessi',
            avatar: wcmessi,
            story: mestory,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
          storyCard(
            labeltext: 'HazardEden10',
            avatar: hazarrd,
            story: hazstory,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
          storyCard(
            labeltext: 'Salih sanu',
            avatar: sali,
            story: salistory,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
          storyCard(
            labeltext: 'Unaibsha',
            avatar: unaib,
            story: unu,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
          storyCard(
            labeltext: 'Suhail kkr',
            avatar: suhail,
            story: suhstory,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
          storyCard(
            labeltext: 'Fasil wafy',
            avatar: fasil,
            story: fasil,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
          storyCard(
            labeltext: 'Aditiravi',
            avatar: adiiti,
            story: aaditiravi,
            createStoryStatus: false,
            DisplayBorder: true,
          ),
        ],
      ),
    );
  }
}
