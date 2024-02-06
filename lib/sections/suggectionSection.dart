import 'package:facebook_ui_1/assets.dart';
import 'package:facebook_ui_1/widgets/addFriendCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class suggetionSection extends StatelessWidget {
  const suggetionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ),
          Container(
            height: 380,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                sugetionCard(
                  Name: 'Sibi_Mystic',
                  avatar: kunjan,
                  MutualFriends: '32 Mutual Friends',
                  RemoveFriens: () {
                    print('Remove Friend');
                  },
                  addFriend: () {
                    print('Request Friendship');
                  },
                ),
                sugetionCard(
                  Name: 'Dana Razik',
                  avatar: dana,
                  MutualFriends: '116 Mutual Friends',
                  RemoveFriens: () {
                    print('Remove Friend');
                  },
                  addFriend: () {
                    print('Request Friendship');
                  },
                ),
                sugetionCard(
                  Name: 'Vaseem Anwar KP',
                  avatar: vaseem,
                  MutualFriends: '46 Mutual Friends',
                  RemoveFriens: () {
                    print('Remove Friend');
                  },
                  addFriend: () {
                    print('Request Friendship');
                  },
                ),
                sugetionCard(
                  Name: 'Midema Fans Kerela',
                  avatar: miedema,
                  MutualFriends: '2 Mutual Friends',
                  RemoveFriens: () {
                    print('Remove Friend');
                  },
                  addFriend: () {
                    print('Request Friendship');
                  },
                ),
                sugetionCard(
                  Name: '_nez_ii ',
                  avatar: naseeb,
                  MutualFriends: '13 Mutual Friends',
                  RemoveFriens: () {
                    print('Remove Friend');
                  },
                  addFriend: () {
                    print('Request Friendship');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
