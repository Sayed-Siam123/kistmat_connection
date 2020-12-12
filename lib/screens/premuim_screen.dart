import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/screens/Features_Screen.dart';
import 'package:kistmat_connection/screens/features_screen(old).dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

class PremiumScreen extends StatefulWidget {
  static String ID = "/premium_screen";

  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/back.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: CenterText(
                          text: "Premium",
                          textColor: Colors.black,
                          fontSize: fontSize+3,
                          isBold: true,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      color: Color(0xFFF3F2F3),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Features_Screen.ID);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 7.0,
                                          offset: Offset(0.0, 0.35))
                                    ]),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    ListTile(
                                      leading: SvgPicture.asset(
                                        "assets/svg/swipe.svg",
                                        width: 30,
                                        height: 30,
                                      ),
                                      title: CenterText(
                                          text: "Unlimited Swipe Right",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: fontSize),
                                      subtitle: CenterText(
                                          text:
                                              "Give likes to as many profiles you want",
                                          textColor: Colors.grey,
                                          fontSize: fontSize-2),
                                    ),
                                    SizedBox(height: 10),
                                    Divider(
                                      height: 1,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        children: [
                                          CenterText(
                                            text: "Unlimited Swipes",
                                            textColor: Colors.black,
                                            fontSize: fontSize,
                                            isBold: true,
                                          ),
                                          Spacer(),
                                          CupertinoSwitch(
                                            value: true,
                                            activeColor: kPrimaryDarkColor,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/skip.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Skip the queue",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Be the top profile for 30 minutes in your area to receive more matches",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CenterText(
                                              text: "Unlimited Swipes",
                                              textColor: Colors.black,
                                              fontSize: fontSize,
                                              isBold: true,
                                            ),
                                            CenterText(
                                              text: "Free 1 boost each month",
                                              textColor: Colors.grey,
                                              fontSize: fontSize-2,
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/chat.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Message them now",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Can't wait for them to match? Send a Instant message now! ",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CenterText(
                                              text: "Instant Chat",
                                              textColor: Colors.black,
                                              fontSize: fontSize,
                                              isBold: true,
                                            ),
                                            CenterText(
                                              text:
                                                  "Get 2x Instant Chat each day",
                                              textColor: Colors.grey,
                                              fontSize: fontSize-2,
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/super_like.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Stand out with Super Likes",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "You're 3x more to likely to get a match",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CenterText(
                                              text: "Super Likes",
                                              textColor: Colors.black,
                                              fontSize: fontSize,
                                              isBold: true,
                                            ),
                                            CenterText(
                                              text: "Get 2x Super Likes each day",
                                              textColor: Colors.grey,
                                              fontSize: fontSize-2,
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/limit_country.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Limit by country",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Looking for a partner in a different country? ",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CenterText(
                                              text: "Location",
                                              textColor: Colors.black,
                                              fontSize: fontSize,
                                              isBold: true,
                                            ),
                                            // CenterText(
                                            //   text: "",
                                            //   textColor: Colors.grey,
                                            //   fontSize: fontSize-2,
                                            // ),
                                          ],
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/advance_filter.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Advanced Filters",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Enhance filters to narrow down your search by height, profession and more",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CenterText(
                                          text: "Advanced Filters",
                                          textColor: Colors.black,
                                          fontSize: fontSize,
                                          isBold: true,
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/swipe_accidently.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Skip someone accidently?",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Rewind back and see the last person",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CenterText(
                                          text: "Swipe Left",
                                          textColor: Colors.black,
                                          fontSize: fontSize,
                                          isBold: true,
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/rematch.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Got Unmatched?",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Upgrade to Premium and request to rematch",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CenterText(
                                          text: "Rematch",
                                          textColor: Colors.black,
                                          fontSize: fontSize,
                                          isBold: true,
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/unblock.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "Unblock",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "Upgrade to Premium to unblock users.",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CenterText(
                                          text: "Unblock users",
                                          textColor: Colors.black,
                                          fontSize: fontSize,
                                          isBold: true,
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3.5,
                                        offset: Offset(0.0, 0.35))
                                  ]),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      "assets/svg/no_ad.svg",
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: CenterText(
                                        text: "No ads",
                                        textColor: Colors.black,
                                        isBold: true,
                                        fontSize: fontSize),
                                    subtitle: CenterText(
                                        text:
                                            "No more annoying interruptions, enjoy a completely ad free experience.",
                                        textColor: Colors.grey,
                                        fontSize: fontSize-2),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CenterText(
                                          text: "No ads",
                                          textColor: Colors.black,
                                          fontSize: fontSize,
                                          isBold: true,
                                        ),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: true,
                                          activeColor: kPrimaryDarkColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
