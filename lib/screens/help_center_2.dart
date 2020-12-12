import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class HelpCenter2 extends StatefulWidget {
  static String ID = "/help_center_2";

  @override
  _HelpCenter2State createState() => _HelpCenter2State();
}

class _HelpCenter2State extends State<HelpCenter2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Center(
                    child: CenterText(
                      text: "Help center",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      SvgPicture.asset(
                        "assets/svg/help_center_2.svg",
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.width * 0.45,
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.25),
                                spreadRadius: 2.5,
                                blurRadius: 3.5,
                                offset:
                                    Offset(0, 1.5), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                          children: [
                            ExpansionTile(
                              title: CenterText(
                                  text: "Basic",
                                  isBold: true,
                                  textColor: kPrimaryDarkColor,
                                  fontSize: fontSize),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "What is Kismat Konnection?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "How much does Kismat Konnection coast?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "Is Kismat Konnection free?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text:
                                              "How does Kismat Konnection work?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            ExpansionTile(
                              title: CenterText(
                                  text: "Account",
                                  isBold: true,
                                  textColor: kPrimaryDarkColor,
                                  fontSize: fontSize),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "What is Kismat Konnection?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text:
                                              "How much does Kismat Konnection coast?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "Is Kismat Konnection free?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text:
                                              "How does Kismat Konnection work?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            ExpansionTile(
                              title: CenterText(
                                  text: "Matching",
                                  isBold: true,
                                  textColor: kPrimaryDarkColor,
                                  fontSize: fontSize),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "What is Kismat Konnection?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text:
                                              "How much does Kismat Konnection coast?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text: "Is Kismat Konnection free?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CenterText(
                                          text:
                                              "How does Kismat Konnection work?",
                                          textColor: Colors.black,
                                          isBold: true,
                                          fontSize: null),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
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
