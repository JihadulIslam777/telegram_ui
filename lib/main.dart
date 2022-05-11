import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_ui/chat_item.dart';
import 'package:telegram_ui/constants.dart';
import 'package:telegram_ui/new_message.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: kBlue1Color,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kBlue2Color,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kBlue2Color),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar(),
      drawer: drawer(),
      body: body(),
      floatingActionButton: fab(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: kBlue2Color,
      elevation: 2,
      title: const Text('Telegram'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
        ),
      ],
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: kBlue4Color,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: kBlue5Color,
                    child: Text(
                      'Jihad',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: semiBold,
                          color: kWhiteColor),
                    ),
                    radius: 34,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('User Jihad',
                              style:
                                  TextStyle(color: kWhiteColor, fontSize: 16)),
                          SizedBox(height: 5),
                          Text('+8801405507801',
                              style: TextStyle(color: kLightGreyColor)),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: kWhiteColor,
                            size: 34,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group_outlined),
            title: const Text('New Group'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline_rounded),
            title: const Text('Contacts'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call_outlined),
            title: const Text('Calls'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.accessibility_new_sharp),
            title: const Text('People Nearby'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border_rounded),
            title: const Text('Saved Messages'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            trailing: const CircleAvatar(
              backgroundColor: kBlue4Color,
              child: Text('!', style: TextStyle(color: kWhiteColor)),
              radius: 12,
            ),
            onTap: () {},
          ),
          const Divider(thickness: 1),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Invite Friends'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.question_answer),
            title: const Text('Telegram Features'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget body() {
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: const [
        ChatItem(
            widget: FlutterLogo(size: 40),
            initial: '',
            title: 'Flutter Bangladesh',
            sender: 'User 3',
            message: 'Hi , anyone there',
            time: '07:56',
            mute: false,
            unread: 103,
            color: Colors.transparent),
        ChatItem(
            widget: FlutterLogo(size: 40),
            initial: '',
            title: 'FlutterDev',
            sender: '',
            message: 'New post',
            time: '2:28',
            mute: true,
            unread: 12,
            color: Colors.transparent),
        ChatItem(
            widget: FlutterLogo(),
            initial: 'N',
            title: 'Niha Islam',
            sender: '',
            message: 'Hi, how are you ?',
            time: '1:34',
            mute: false,
            unread: 1,
            color: kOrangeColor),
        ChatItem(
            widget: FlutterLogo(),
            initial: 'A',
            title: 'Adiba',
            sender: '',
            message: 'Hello',
            time: 'Tue',
            mute: true,
            unread: 0,
            color: kGreenPeasColor),
      ],
    );
  }

  Widget fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NewMessage()));
      },
      backgroundColor: kBlue3Color,
      child: const Icon(Icons.edit_rounded),
    );
  }
}
