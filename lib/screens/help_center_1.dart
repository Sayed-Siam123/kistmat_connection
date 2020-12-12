import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/screens/help_center_2.dart';
import 'package:kistmat_connection/screens/report_problem.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:kistmat_connection/widgets/round_button.dart';

class HelpCenter1 extends StatefulWidget {
  static String ID = "/help_center1";

  @override
  _HelpCenter1State createState() => _HelpCenter1State();
}

class _HelpCenter1State extends State<HelpCenter1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Column(
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
                          fontSize: fontSize+4,
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
                          SvgPicture.asset(
                            "assets/svg/help_center.svg",
                            width: SizeConfig.screenWidth * 0.45,
                            height: SizeConfig.screenWidth * 0.45,
                          ),
                          CenterText(
                            text: "Helpline",
                            isCenter: true,
                            textColor: kPrimaryDarkColor,
                            fontSize: fontSize+2,
                            isBold: true,
                          ),
                          SizedBox(height: 10),
                          CenterText(
                            text: "How can we help you?",
                            isCenter: true,
                            textColor: Colors.black,
                            fontSize: fontSize,
                          ),
                          SizedBox(height: 10),
                          // RaisedButton(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(80.0),
                          //       side: BorderSide(color: kPrimaryDarkColor)),
                          //   onPressed: () {
                          //     Navigator.pushNamed(context, ReportAProblem.ID);
                          //   },
                          //   color: Colors.white,
                          //   padding: const EdgeInsets.all(0.0),
                          //   child: Container(
                          //     color: Colors.white,
                          //     constraints: const BoxConstraints(
                          //         minWidth: 88.0, minHeight: 50.0),
                          //     alignment: Alignment.center,
                          //     child: CenterText(
                          //         text: "View info",
                          //         isBold: true,
                          //         textColor: kPrimaryDarkColor,
                          //         fontSize: 18),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HelpCenter2.ID);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [kPrimaryDarkColor, kPrimaryLightColor]),
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    child: Container(
                      constraints:
                          const BoxConstraints(minWidth: 88.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: CenterText(
                          text: "Connect with us",
                          isBold: true,
                          textColor: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
