import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/drop_down_item.dart';
import 'package:kistmat_connection/screens/EducationScreen.dart';
import 'package:kistmat_connection/screens/religion_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';

class SecterianDivision extends StatefulWidget {
  static String ID = "/secterian_division";

  @override
  _SecterianDivisionState createState() => _SecterianDivisionState();
}

class _SecterianDivisionState extends State<SecterianDivision> {
  @override
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
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, EducationScreen.ID);
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
                  progress: 0.384,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 60.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/sectarian_division.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            isCenter: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "Select your sectarian division",
                            textColor: Colors.black,
                            fontSize: 16),
                        SizedBox(height: 30),
                        CustomDropDown(
                          text: "Sectarian division",
                          items: [
                            DropDownItem(
                                "Digambara", "", "Islam"),
                            DropDownItem(
                                "East", "", "sa"),
                            DropDownItem(
                                "Eastern Orthodoxy", "", "sa"),
                            DropDownItem(
                                "Mahayana", "", "sa"),
                            DropDownItem(
                                "Nirankaris", "", "sa"),
                            DropDownItem("Nam-Dharis",
                                "", "sa"),
                            DropDownItem(
                                "Oriental Orthodoxy", "", "sa"),
                            DropDownItem("Protestantism", "", "sa"),
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
