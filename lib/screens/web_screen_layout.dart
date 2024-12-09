import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';
import 'package:whatsapp_ui/widgets/web_chat_app_bar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          //web screen
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('lib/assets/backgroundImage.png'),
                fit: BoxFit.cover,
              )),
              child: Column(
                children: [
                  WebChatAppBar(),
                  Expanded(child: ChatList()),
                  //message input box
                ],
              )),
        ],
      ),
    );
  }
}
