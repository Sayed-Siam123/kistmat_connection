import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kistmat_connection/screens/filter_screen.dart';
import 'package:kistmat_connection/screens/home/home_explore_screen.dart';
import 'package:kistmat_connection/screens/home/home_messages_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/utils/dialogs.dart';

import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

import 'home/home_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static String ID = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ...getScreen(
              selectedScreen: _selectedScreen, height: hp(80), width: wp(100)),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: _selectedScreen > 0
                      ? Colors.white
                      : Color(0xFF073E46).withOpacity(0.65),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              width: double.infinity,
              height: hp(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomItem(
                    isWhite: _selectedScreen == 0,
                    size: hp(5),
                    isSelected: _selectedScreen == 0,
                    text: "Swipe cards",
                    svg: "assets/svg/card.svg",
                    onClick: () {
                      setState(() {
                        _selectedScreen = 0;
                      });
                    },
                  ),
                  BottomItem(
                    isWhite: _selectedScreen == 0,
                    isSelected: _selectedScreen == 1,
                    size: hp(5),
                    text: "Explore",
                    svg: "assets/svg/binoculars.svg",
                    onClick: () {
                      setState(() {
                        _selectedScreen = 1;
                      });
                    },
                  ),
                  BottomItem(
                    isWhite: _selectedScreen == 0,
                    isSelected: _selectedScreen == 2,
                    size: hp(5),
                    text: "Messages",
                    svg: "assets/svg/messages.svg",
                    onClick: () {
                      setState(() {
                        _selectedScreen = 2;
                      });
                    },
                  ),
                  BottomItem(
                    isWhite: _selectedScreen == 0,
                    isSelected: _selectedScreen == 3,
                    size: hp(5),
                    text: "Profile",
                    svg: "assets/svg/profile.svg",
                    onClick: () {
                      setState(() {
                        _selectedScreen = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showDetailScreen() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 0,
      barrierColor: Colors.black.withAlpha(1),
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CenterText(
                      text: "Carol",
                      textColor: Colors.white,
                      fontSize: 45,
                    ),
                  ),

                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.white,
                          kPrimaryLightColor
                        ])),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CenterText(
                          isCenter: false,
                          text: "About Me",
                          textColor: Colors.black,
                          isBold: true,
                          fontSize: 20),
                      CenterText(
                          isCenter: false,
                          text:
                              "That's the most-commented-on line from my About Me page. It's the very last sentence and the sixth paragraph of 275 words,.",
                          textColor: Colors.black,
                          fontSize: 13),
                      SizedBox(height: 15),
                      CenterText(
                          isCenter: false,
                          text: "Details",
                          textColor: Colors.black,
                          isBold: true,
                          fontSize: 20),
                      Row(
                        children: [
                          Expanded(
                            child: DetailItem(
                              text: "5ft 3inch",
                              path: "assets/svg/height.svg",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: DetailItem(
                              text: "Single",
                              path: "assets/svg/marital_status.svg",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: DetailItem(
                              text: "Christian",
                              path: "assets/svg/church.svg",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: DetailItem(
                              text: "No",
                              path: "assets/svg/kids.svg",
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: DetailItem(
                              text: "Yes",
                              path: "assets/svg/relocate.svg",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: DetailItem(
                              text: "Often",
                              path: "assets/svg/gym.svg",
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      DetailItem(
                        text: "Sectarian",
                        path: "assets/svg/sectarian_division.svg",
                      ),
                      SizedBox(height: 10),
                      DetailItem(
                        text: "Master's Degree",
                        path: "assets/svg/edu_cap.svg",
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
/*    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              CenterText(text: "Carol", textColor: Colors.white, fontSize: 35),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-1.0, -4.0),
                        end: Alignment(1.0, 4.0),
                        colors: [
                      Colors.white,
                      Colors.white,
                      kPrimaryLightColor
                    ])),
              ),
            ],
          );
        });*/
  }

  void showReportDialog() {
    showDialog(
        context: context,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 10),
                Container(
                  height: SizeConfig.screenHeight*0.60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/report_admin.svg",
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: MediaQuery.of(context).size.width * 0.40,
                      ),
                      SizedBox(height: 10),
                      CenterText(
                          text: "Reporting Shivani",
                          textColor: Colors.black,
                          fontSize: 16,
                          isBold: true),
                      SizedBox(height: 10),
                      CenterText(
                        isCenter: true,
                        text:
                            "Please tell us why you are reporting them.\nDon't worry, we won't let XYZ know.",
                        textColor: Colors.black,
                        fontSize: 13,
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          AppDialog().showOSDialog(context, "Block user",
                              "Do you really want to block", "YES", () {
                            showBlockedDialog();
                          }, secondButtonText: "NO", secondCallback: () {});
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300.withOpacity(.8),
                                  blurRadius: 10,
                                  offset: Offset(1,1),
                                  spreadRadius: 3,
                                ),
                              ]
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/block.svg",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 10),
                              CenterText(
                                  text: "Block Shivani",
                                  textColor: Colors.black,
                                  fontSize: 16)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          showReporTypeDialog();
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300.withOpacity(.8),
                                blurRadius: 10,
                                offset: Offset(1,1),
                                spreadRadius: 3,
                              ),
                            ]
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/report.svg",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 10),
                              CenterText(
                                  text: "Report Shivani",
                                  textColor: Colors.black,
                                  fontSize: 16),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void showReporTypeDialog() {
    showDialog(
        context: context,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 10),
                Container(
                  height: SizeConfig.screenHeight * 0.60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          CenterText(
                              isCenter: true,
                              text: "Reporting Shivani",
                              textColor: Colors.black,
                              fontSize: 20,
                              isBold: true),
                          CenterText(
                            isCenter: true,
                            text: "Don't worry, we won't let XYZ know.",
                            textColor: Colors.black,
                            fontSize: 16,
                          ),
                          SizedBox(height: 20),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ReportItem(
                                  text: "Fake/Spam\nProfile",
                                  path: "assets/images/report1_user.png",
                                  onClick: () {
                                    Navigator.pop(context);
                                    showRepormessageDialog();
                                  },
                                ),
                                ReportItem(
                                  text: "Inappropriate\nMessages",
                                  path: "assets/images/report2_user.png",
                                  onClick: () {},
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ReportItem(
                                  text: "Inappropriate\nPhotos",
                                  path: "assets/images/report3_user.png",
                                  onClick: () {},
                                ),
                                ReportItem(
                                  text: "Inappropriate\nBio",
                                  path: "assets/images/report4_user.png",
                                  onClick: () {},
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ReportItem(
                                  text: "Underage",
                                  path: "assets/images/report5_user.png",
                                  onClick: () {},
                                ),
                                ReportItem(
                                  text: "Something else",
                                  path: "assets/images/report6_user.png",
                                  onClick: () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void showRepormessageDialog() {
    showDialog(
        context: context,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 50),
                Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          CenterText(
                              isCenter: true,
                              text: "Tell us more",
                              textColor: Colors.black,
                              fontSize: 20,
                              isBold: true),
                          CenterText(
                            isCenter: true,
                            text:
                                "Please tell us more information.\nDon't worry, we won't tell Shivani.",
                            textColor: Colors.black,
                            fontSize: 16,
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: kPrimaryLightColor, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                minLines: 5,
                                maxLines: 200,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Please enter minimum 100 words"),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              showReportedDialog();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  kPrimaryLightColor,
                                  kPrimaryDarkColor
                                ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: CenterText(
                                    text: "Continue",
                                    textColor: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void showReportedDialog() {
    showDialog(
        context: context,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 50),
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          SvgPicture.asset("assets/svg/user_reorted.svg",
                              width: 100, height: 100),
                          SizedBox(height: 10),
                          CenterText(
                              isCenter: true,
                              text: "Shivani has been",
                              textColor: Colors.black,
                              fontSize: 30,
                              isBold: true),
                          CenterText(
                            isCenter: true,
                            text: "Reported".toUpperCase(),
                            textColor: kPrimaryDarkColor,
                            fontSize: 25,
                          ),
                          SizedBox(height: 30),
                          RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  kPrimaryLightColor,
                                  kPrimaryDarkColor
                                ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: CenterText(
                                    text: "OK",
                                    textColor: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void showBlockedDialog() {
    showDialog(
        context: context,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.clear,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 50),
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          SvgPicture.asset("assets/svg/user_blocked.svg",
                              width: 100, height: 100),
                          SizedBox(height: 10),
                          CenterText(
                              isCenter: true,
                              text: "Shivani has been",
                              textColor: Colors.black,
                              fontSize: 30,
                              isBold: true),
                          CenterText(
                            isCenter: true,
                            text: "Blocked".toUpperCase(),
                            textColor: kPrimaryDarkColor,
                            fontSize: 25,
                          ),
                          SizedBox(height: 30),
                          RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  kPrimaryLightColor,
                                  kPrimaryDarkColor
                                ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: CenterText(
                                    text: "OK",
                                    textColor: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> getSwipeCard(height, width) {
    dynamic hp = Hp(height).hp;
    dynamic wp = Wp(width).wp;
    SizeConfig().init(context);
    return [
      Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Image.asset(
          "assets/images/women_photo.png",
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40,20,40,0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, FilterScreen.ID);
                    },
                    child: SvgPicture.asset(
                      "assets/svg/filter.svg",
                      height: 25,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      showReportDialog();
                    },
                    child: SvgPicture.asset(
                      "assets/svg/option.svg",
                      height: 25,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15,0,15,0),
              child: Container(
                width: SizeConfig.screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        showDetailScreen();
                      },
                      child: CenterText(
                        text: "Carol, 22",
                        textColor: Colors.white,
                        fontSize: hp(16),
                        isBold: true,
                        isCenter: true,
                      ),
                    ),
                    CenterText(
                      text: "2 Miles away, London",
                      textColor: Colors.white,
                      fontSize: hp(8),
                      isCenter: true,
                    ),
                    SizedBox(height: hp(6)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF073E46).withOpacity(0.65),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(hp(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/india_flag.svg",
                                      width: wp(10),
                                      height: hp(8),
                                    ),
                                    SizedBox(width: wp(2)),
                                    CenterText(
                                        text: "India",
                                        textColor: Colors.white,
                                        fontSize: 20,
                                        isBold: true)
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.70,
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF073E46).withOpacity(0.65),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/uk_flag.svg",
                                      width: wp(10),
                                      height: hp(8),
                                    ),
                                    SizedBox(width: wp(2)),
                                    CenterText(
                                        text: "Uk",
                                        textColor: Colors.white,
                                        fontSize: 20,
                                        isBold: true)
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF073E46).withOpacity(0.65),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/profession.svg",
                              width: wp(10),
                              height: hp(8),
                            ),
                            SizedBox(width: wp(2)),
                            CenterText(
                                text: "Chartered Accountant",
                                textColor: Colors.white,
                                fontSize: 20,
                                isBold: true)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: hp(3)),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg/refresh.svg",
                              height: wp(17),
                              width: hp(17),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                              child: Container(
                                  width: double.infinity,
                                  height: hp(20),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: SvgPicture.asset(
                                          "assets/svg/star.svg",
                                          width: wp(14),
                                          height: hp(14),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 7),
                                        child: SvgPicture.asset(
                                          "assets/svg/yellow_msg.svg",
                                          width: wp(14),
                                          height: hp(14),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF073E46).withOpacity(0.65),
                                      borderRadius: BorderRadius.circular(23)))),
                        ),
                        Expanded(
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg/rocket.svg",
                              height: wp(17),
                              width: hp(17),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  Widget getExploreScreen() {
    return HomeExploreScreen();
  }

  List<Widget> getScreen({int selectedScreen, height, width}) {
    dynamic hp = Hp(height).hp;
    dynamic wp = Wp(width).wp;
    if (_selectedScreen == 0)
      return getSwipeCard(hp(50), wp(100));
    else if (_selectedScreen == 1)
      return [getExploreScreen()];
    else if (_selectedScreen == 2)
      return [HomeMessagesScreen()];
    else if (_selectedScreen == 3) return [HomeProfileScreen()];
  }
}

class ReportItem extends StatelessWidget {
  ReportItem({this.text, this.path, this.onClick});

  String text;
  String path;
  Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick.call();
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 130,
            height: 110,
            child: Center(child: Image.asset(this.path, width: 90, height: 90)
                /*this.path*/
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
          SizedBox(height: 10),
          CenterText(
            text: this.text,
            textColor: Colors.black,
            fontSize: 16,
            isCenter: true,
          )
        ],
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  DetailItem({this.text, this.path});

  String text;
  String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          SizedBox(width: 15),
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              this.path,
              width: 25,
              height: 25,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(width: 15),
          CenterText(
              text: this.text,
              textColor: Colors.black,
              fontSize: 16,
              isBold: true)
        ],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0.5,
          blurRadius: 1.5,
          offset: Offset(0, 0.5), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(5), color: Colors.white),
    );
  }
}

class BottomItem extends StatelessWidget {
  BottomItem(
      {this.text,
      this.svg,
      this.isSelected,
      this.size,
      this.onClick,
      this.isWhite = true});

  String text;
  String svg;
  bool isSelected;
  double size;
  Function onClick;
  bool isWhite;

  @override
  Widget build(BuildContext context) {
    isSelected = isSelected ?? false;
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                svg,
                color: this.isSelected ? kPrimaryDarkColor : Colors.grey,
                width: this.size ?? 25,
                height: this.size ?? 25,
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: CenterText(
                isCenter: true,
                text: text,
                textColor: isWhite ? Colors.white : Colors.black,
                isBold: true,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
