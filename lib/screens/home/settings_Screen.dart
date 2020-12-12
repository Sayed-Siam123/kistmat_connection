import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/screens/filter_screen.dart';
import 'package:kistmat_connection/screens/notification_list.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

import '../distance_filter_screen.dart';

class SettingsScreen extends StatefulWidget {
  static String ID = "/settings_screen";

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      "assets/svg/back.svg",
                      height: 20,
                    ),
                  ),
                  Center(
                    child: CenterText(
                      text: "Settings",
                      textColor: Colors.black,
                      fontSize: fontSize,
                      isBold: true,
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      FilterItem(
                        text: "Email",
                        assetsPath: "assets/images/settings_email.png",
                        value: "someone@example.com",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItem(
                        text: "Phone",
                        assetsPath: "assets/images/settings_phone.png",
                        value: "+447792907099",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItemList(
                        text: "Notifications",
                        assetsPath: "assets/images/settings_notification.png",
                        value: "",
                        onClick: () {
                          Navigator.pushNamed(context, NotificationList.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItemSwitch(
                        text: "Show me on Kismat Konnection",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CenterText(
                            text:
                                "While turned off, you will not be shown in the card stack. People you have already liked may still see your profile and match with you. You can still see and chat with your matches.",
                            textColor: Colors.black,
                            fontSize: null),
                      ),
                      FilterItemSwitch(
                        text: "Read Receipts",
                        assetsPath: "assets/images/receipt.png",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItemSwitch(
                        text: "Online Status",
                        assetsPath: "assets/images/online.png",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItem(
                        text: "Logout",
                        value: "",
                        assetsPath: "assets/images/logout.png",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItem(
                        value: "",
                        text: "Delete Account",
                        assetsPath: "assets/images/delete.png",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 20),
                      FilterItem(
                        value: "1.1.0189",
                        text: "App Version",
                        assetsPath: "assets/images/version.png",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FilterItemList extends StatelessWidget {
  FilterItemList(
      {this.text, this.path, this.value, this.onClick, this.assetsPath});

  String text;
  String path;
  String assetsPath;
  String value;
  Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick.call();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, bottom: 5, left: 5),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 15),
                        this.assetsPath == null
                            ? SvgPicture.asset(
                                this.path,
                                width: 30,
                                height: 30,
                                allowDrawingOutsideViewBox: true,
                              )
                            : Image.asset(
                                this.assetsPath,
                                width: 30,
                                height: 30,
                              ),
                        SizedBox(width: 15),
                        CenterText(
                            text: this.text,
                            textColor: Colors.black,
                            fontSize: fontSize-1,
                            isBold: true),
                      ],
                    ),
                    CenterText(
                        maxLines: 2,
                        text: this.value,
                        textColor: Colors.black.withOpacity(0.65),
                        fontSize: fontSize-4),
                    SizedBox(width: 10),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      CenterText(
                          text: "Email", textColor: Colors.black, fontSize: 14),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      CenterText(
                          text: "Push Notifications",
                          textColor: Colors.black,
                          fontSize: 14),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      CenterText(
                          text: "Team Kismat Konnection",
                          textColor: Colors.black,
                          fontSize: 14),
                    ],
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 1.5,
              offset: Offset(0, 0.5), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(5), color: Colors.white),
        ),
      ),
    );
  }
}
