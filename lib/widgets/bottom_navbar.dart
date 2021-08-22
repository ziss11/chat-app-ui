import 'package:chat_us_app/theme/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  Widget iconNavbar(
      int index, String label, String imgBefore, String imgAfter) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            selectedIndex == index ? imgAfter : imgBefore,
            width: 24,
            height: 20,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: semiboldText.copyWith(
              fontSize: 12,
              color: selectedIndex == index ? purpleColor : greyColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xff2F3142),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconNavbar(
            0,
            "chats",
            'assets/chat_icon.png',
            'assets/chat_icon_purple.png',
          ),
          iconNavbar(
            1,
            "call",
            'assets/call_icon.png',
            'assets/call_icon_purple.png',
          ),
        ],
      ),
    );
  }
}
