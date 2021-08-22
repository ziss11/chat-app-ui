import 'package:chat_us_app/theme/theme.dart';
import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  Widget meCircleStory(String img) {
    return Stack(
      children: [
        Image.asset(
          img,
          width: 50,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 38,
            left: 15,
          ),
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: blackColor,
                spreadRadius: 5,
                blurRadius: 0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(
            Icons.add,
            color: whiteColor,
            size: 20,
          ),
        ),
      ],
    );
  }

  Widget friendsCircleStory(String img, bool unSeen) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: unSeen ? Border.all(width: 2, color: blueColor) : Border(),
          ),
          child: Image.asset(
            img,
            width: unSeen ? 48 : 58,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: unSeen ? 45 : 48,
            left: unSeen ? 45 : 48,
          ),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(80),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        meCircleStory('assets/me.png'),
        friendsCircleStory('assets/friends1.png', false),
        friendsCircleStory('assets/friends3.png', false),
        friendsCircleStory('assets/friends5.png', false),
        friendsCircleStory('assets/friends2.png', true),
      ],
    );
  }
}
