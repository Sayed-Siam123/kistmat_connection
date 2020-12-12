import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/screens/home_screen.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

import 'filter_screen.dart';

class ViewPersonalProfile extends StatefulWidget {
  static String ID = "/view_personal_profile";

  @override
  _ViewPersonalProfileState createState() => _ViewPersonalProfileState();
}

class _ViewPersonalProfileState extends State<ViewPersonalProfile> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: hp(100),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "assets/images/women_photo.png",
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: wp(3),
                    right: 0,
                    top: hp(8),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: hp(1)),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(
                              "assets/svg/back.svg",
                              width: 30,
                              height: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: hp(2),
                    left: wp(5),
                    right: wp(5),
                    child: Container(
                      width: wp(100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: CenterText(
                              text: "Carol, 22",
                              textColor: Colors.white,
                              fontSize: 35,
                              isBold: true,
                              isCenter: true,
                            ),
                          ),
                          SizedBox(height: hp(2)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xFF073E46).withOpacity(0.65),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: EdgeInsets.all(hp(1.5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/india_flag.svg",
                                            width: wp(4),
                                            height: hp(4),
                                          ),
                                          SizedBox(width: wp(3)),                                          CenterText(
                                              text: "India",
                                              textColor: Colors.white,
                                              fontSize: 20,
                                              isBold: true)
                                        ],
                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.70,
                                  ),
                                ),
                                SizedBox(width: wp(6)),                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xFF073E46).withOpacity(0.65),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/uk_flag.svg",
                                            width: wp(4),
                                            height: hp(4),
                                          ),
                                          SizedBox(width: wp(3)),
                                          CenterText(
                                              text: "Uk",
                                              textColor: Colors.white,
                                              fontSize: 20,
                                              isBold: true)
                                        ],
                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: hp(2)),
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
                                    width: wp(4),
                                    height: hp(4),
                                  ),
                                  SizedBox(width: 10),
                                  CenterText(
                                      text: "Chartered Accountant",
                                      textColor: Colors.white,
                                      fontSize: 20,
                                      isBold: true)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CenterText(
                    text: "Carol",
                    textColor: Colors.black,
                    fontSize: 45,
                  ),
                ),
                Spacer()
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
                      colors:[
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
    );
  }

  List<Widget> getScreen(int selectedScreen) {
    return getSwipeCard(context);
  }
}

List<Widget> getSwipeCard(BuildContext context) {
  return [
    Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        "assets/images/women_photo.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
    Positioned(
      left: 30,
      right: 0,
      top: 50,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                "assets/svg/back.svg",
                width: 30,
                height: 30,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    ),
    Positioned(
      bottom: 10,
      left: (MediaQuery.of(context).size.width * 0.05),
      right: (MediaQuery.of(context).size.width * 0.05),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: CenterText(
                text: "Carol, 22",
                textColor: Colors.white,
                fontSize: 35,
                isBold: true,
                isCenter: true,
              ),
            ),
            SizedBox(height: 10),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/india_flag.svg",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 10),
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
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 10),
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
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    CenterText(
                        text: "Chartered Accountant",
                        textColor: Colors.white,
                        fontSize: 20,
                        isBold: true)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    )
  ];
}
