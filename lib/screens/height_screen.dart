import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/drop_down_item.dart';
import 'package:kistmat_connection/screens/gym_screen.dart';
import 'package:kistmat_connection/screens/religion_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';
import 'marital_status_screen.dart';

class HeightScreen extends StatefulWidget {
  static String ID = "/height_screen";

  @override
  _HeightScreenState createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, GymScreen.ID);
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
                        ))
                  ],
                ),
                BackWithProgress(
                  onBackClick: () {
                    Navigator.pop(context);
                  },
                  progress: 0.63,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 70.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/height.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "How tall are you?",
                            textColor: Colors.black,
                            fontSize: fontsize2),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomDropDown(
                              text: "Feet",
                              items: [
                                DropDownItem("1", "", "Islam"),
                                DropDownItem("2", "", "sa"),
                                DropDownItem("3", "", "sa"),
                                DropDownItem("4", "", "sa"),
                                DropDownItem("5", "", "sa"),
                                DropDownItem("6", "", "sa"),
                                DropDownItem("7", "", "sa"),
                              ],
                            ),
                            SizedBox(width: 10),
                            CustomDropDown(
                              text: "Inches",
                              items: [
                                DropDownItem("1 \"", "", "Islam"),
                                DropDownItem("2 \"", "", "sa"),
                                DropDownItem("3 \"", "", "sa"),
                                DropDownItem("4 \"", "", "sa"),
                                DropDownItem("5 \"", "", "sa"),
                                DropDownItem("6 \"", "", "sa"),
                              ],
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
        ),
      ),
    );
  }
}
