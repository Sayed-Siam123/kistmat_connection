import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeatureScreenOld extends StatefulWidget {
  static String ID = "/premuim_screen";

  @override
  _FeatureScreenOldState createState() => _FeatureScreenOldState();
}

class _FeatureScreenOldState extends State<FeatureScreenOld> {
  List<String> headings = [
    "Unlimited Swipes",
    "Unlimited Rewinds",
    "Boost Every Month",
    "Instant chat daily",
    "Super Likes daily",
    "Change Location",
    "Reset Swipes",
    "Turn off Ads"
  ];

  List<Color> colors = [
    Color(0xFFED1E79),
    Color(0xFF008080),
    Color(0xFF800080),
    Color(0xFFFED600),
    Color(0xFF03C6DB),
    Color(0xFF009245),
    Color(0xFFFF33CC),
    Color(0xFF5C47E7)
  ];
  List<int> index = [1, 2, 3, 4, 5, 6, 7, 8];

  int _selectedIndex = 1;
  PageController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              color: colors[_selectedIndex],
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: hp(15), left: 5, right: 5),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: PageView(
                            controller: controller,
                            scrollDirection: Axis.horizontal,
                            allowImplicitScrolling: true,
                            onPageChanged: (index) {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            children: index.map((e) {
                              return Column(
                                children: [...getData(e)],
                              );
                            }).toList(),
                          ),
                        ),
                      ]),
                ),
              )),
          Positioned(
            left: 0,
            top: 30,
            right: 0,
            child: SizedBox(
              height: 80,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 8,
                  effect: WormEffect(activeDotColor: Colors.white),
                  axisDirection: Axis.horizontal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getData(int index) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return [
      SizedBox(height: hp(3),),
      SvgPicture.asset(
        "assets/svg/feature${(index).toString()}.svg",
        width: 70,
        height: 70,
      ),
      SizedBox(height: hp(5),),
      CenterText(
        text: headings[index - 1],
        textColor: Colors.black,
        fontSize: 20,
        isBold: true,
        isCenter: true,
      ),
      SizedBox(height: hp(3),),
      Expanded(
        child: Row(
          children: [
            SizedBox(width: 10),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1.75,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: hp(1)),
                      child: Container(
                        height: hp(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: kPrimaryDarkColor, width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("1",
                                style: TextStyle(
                                    fontSize: hp(8),
                                    height: hp(.2),
                                    color: kPrimaryDarkColor,
                                    fontWeight: FontWeight.w800)),
                            Text("months",
                                style: TextStyle(
                                    fontSize: hp(2),
                                    height: hp(.2),
                                    color: kPrimaryDarkColor,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                            ),
                            SizedBox(height: hp(4)),
                            CenterText(
                                text: "£ 14.99",
                                textColor: kPrimaryDarkColor,
                                isBold: true,
                                fontSize: 16),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1.75,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: hp(1)),
                      child: Container(
                        height: hp(30),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              kPrimaryLightColor,
                              kPrimaryDarkColor
                            ]),
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: kPrimaryDarkColor, width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("3",
                                style: TextStyle(
                                    fontSize: hp(8),
                                    height: hp(.2),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)),
                            Text("months",
                                style: TextStyle(
                                    fontSize: hp(2),
                                    height: hp(.2),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              child: Center(
                                child: CenterText(
                                  text: "save 13%".toUpperCase(),
                                  isBold: true,
                                  textColor: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Color(0xFFEAC606),
                                Color(0xFFF9D202)
                              ])),
                            ),
                            SizedBox(height: 10),
                            CenterText(
                                text: "£ 12.99",
                                textColor: Colors.white,
                                isBold: true,
                                fontSize: 16),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: hp(10)),
                      width: double.infinity,
                      height: hp(7),
                      child: Center(
                        child: CenterText(
                          text: "most popular".toUpperCase(),
                          isBold: true,
                          textColor: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              colors: [Color(0xFFEAC606), Color(0xFFF9D202)])),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1.75,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: hp(1)),
                      child: Container(
                        height: hp(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: kPrimaryDarkColor, width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("6",
                                style: TextStyle(
                                    fontSize: hp(7),
                                    height: hp(.2),
                                    color: kPrimaryDarkColor,
                                    fontWeight: FontWeight.w800)),
                            Text("months",
                                style: TextStyle(
                                    fontSize: hp(2),
                                    height: hp(.3),
                                    color: kPrimaryDarkColor,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              child: Center(
                                child: CenterText(
                                  text: "save 33%".toUpperCase(),
                                  isBold: true,
                                  textColor: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Color(0xFFEAC606),
                                Color(0xFFF9D202)
                              ])),
                            ),
                            SizedBox(height: 10),
                            CenterText(
                                text: "£ 9.99",
                                textColor: kPrimaryDarkColor,
                                isBold: true,
                                fontSize: 16),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      SizedBox(height: hp(2)),
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: CenterText(
              isCenter: true,
              text:
                  "You can cancel your subscription at any time.One-time payment.\n",
              textColor: Colors.black,
              fontSize: 16,
              isBold: true),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: RichText(
            softWrap: true,
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'If you decide to purchase a subscription, your payment will be processed via your google Play account. your subscription will be automatically renewed, and the corresponding amount will be charged to your account 24 hours before the end of each billing period. You can disable the automatic renewal at any time in your Play Store settings',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'Terms and Conditions of use',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kPrimaryDarkColor),
                ),
                TextSpan(
                    text: ' and',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                  text: ' Privacy Policy.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kPrimaryDarkColor),
                ),
              ],
            ),
          ),
        ),
      )
    ];
  }
}
