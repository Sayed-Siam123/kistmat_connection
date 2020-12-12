import 'package:bubble/bubble.dart';
import 'package:chatbar/chatbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';

class ChatMessagesScreen extends StatefulWidget {
  static String ID = "/chat_messages";

  @override
  _ChatMessagesScreenState createState() => _ChatMessagesScreenState();
}

class _ChatMessagesScreenState extends State<ChatMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: ChatBar(
        height: 50,
        onprofileimagetap: () {},
        profilePic: Image.network(
          'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/e43107fa73798ded74d1b909bafd0792-1580663169328/bc0b122a-72c6-4148-afea-710f3b53efda.jfif',
          height: 40,
          width: 40,
          fit: BoxFit.contain,
        ),
        username: "Shivansh Talwar",
        status: Text('online',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        color: Color(0xFF09B3C5),
        backbuttoncolor: Colors.white,
        backbutton: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.phone),
            color: Color(0xFF413E3F),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
            color: Color(0xFF413E3F),
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            enabled: true,
            onSelected: (str) {},
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              const PopupMenuItem<String>(
                value: 'View Contact',
                child: Text('View Contact'),
              ),
              const PopupMenuItem<String>(
                value: 'Media',
                child: Text('Media'),
              ),
              const PopupMenuItem<String>(
                value: 'Search',
                child: Text('Search'),
              ),
              const PopupMenuItem<String>(
                value: 'Wallpaper',
                child: Text('Wallpaper'),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Bubble(
                    alignment: Alignment.center,
                    color: Color.fromRGBO(212, 234, 244, 1.0),
                    child: Text('TODAY',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11.0)),
                  ),
                  Bubble(
                    margin: BubbleEdges.only(top: 10),
                    alignment: Alignment.topRight,
                    nipWidth: 10,
                    nipHeight: 24,
                    nip: BubbleNip.rightTop,
                    color: Color(0xFF03C6DB),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor Lorem ipsum dolor',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '10:34 am',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              SvgPicture.asset(
                                "assets/svg/double_tick.svg",
                                width: 20,
                                height: 20,
                                color: Color(0xFFFFD700),
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Bubble(
                    margin: BubbleEdges.only(top: 10),
                    alignment: Alignment.topLeft,
                    nipWidth: 8,
                    nipHeight: 24,
                    color: Color(0xFFE4E7EA),
                    nip: BubbleNip.leftTop,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor Lorem ipsum dolor',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '10:34 am',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: Colors.grey),
                              ),
                              SizedBox(width: 5),
                              SvgPicture.asset(
                                "assets/svg/double_tick.svg",
                                width: 20,
                                height: 20,
                                color: Color(0xFFFFD700),
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: MaterialButton(
            onPressed: () {
              print('recording audio');
            },
            padding: EdgeInsets.all(0.0),
            shape: CircleBorder(),
            color: kPrimaryLightColor,
            textColor: Colors.white,
            child: Center(
              child: Icon(
                Icons.add,
              ),
            ),
          ),
        ),
        Expanded(
          flex: true ? 8 : 14,
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Color(0xFFF2F1F6),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 20),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  child: IconButton(
                    onPressed: () {
                      print('open emoji keyboard');
                    },
                    color: Colors.grey,
                    icon: Icon(Icons.insert_emoticon),
                  ),
                ),
                Container(
                  width: 30.0,
                  height: 40.0,
                  child: IconButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      print('opening camera');
                    },
                    color: Colors.grey,
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: MaterialButton(
            onPressed: () {
              print('recording audio');
            },
            padding: EdgeInsets.all(0.0),
            shape: CircleBorder(),
            color: kPrimaryLightColor,
            textColor: Colors.white,
            child: Center(
              child: Icon(
                Icons.keyboard_voice,
              ),
            ),
          ),
        )
      ],
    );
  }
}
