import 'package:chat_us_app/model/chat.dart';
import 'package:chat_us_app/theme/theme.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final Chat chat;

  ChatList({required this.chat});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                chat.img,
                width: 50,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: semiboldText.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    chat.content,
                    style: mediumText.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                chat.time,
                style: regularText.copyWith(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Color(0xff313441),
          ),
        ],
      ),
    );
  }
}
