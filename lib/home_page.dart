import 'package:chat_us_app/model/chat.dart';
import 'package:chat_us_app/theme/theme.dart';
import 'package:chat_us_app/widgets/bottom_navbar.dart';
import 'package:chat_us_app/widgets/chat_list.dart';
import 'package:chat_us_app/widgets/status_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      floatingActionButton: BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/me.png',
                    width: 40,
                  ),
                  Image.asset(
                    'assets/Menu.png',
                    width: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Online",
                    style: semiboldText.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: Color(0xff2F3142),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Text(
                      "4",
                      style: semiboldText.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: StatusList(),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                "Messages",
                style: semiboldText.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: chatList.map((chat) {
                  return ChatList(chat: chat);
                }).toList(),
              ),
              SizedBox(
                height: 65,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
