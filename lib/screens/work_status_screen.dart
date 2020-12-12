import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/drop_down_item.dart';
import 'package:kistmat_connection/screens/marital_status_screen.dart';
import 'package:kistmat_connection/screens/religion_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';

class WorkStatusScreen extends StatefulWidget {
  static String ID = "/work_status_screen";

  @override
  _WorkStatusScreenState createState() => _WorkStatusScreenState();
}

class _WorkStatusScreenState extends State<WorkStatusScreen> {
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
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context,
                                MaritalStatusScreen.ID);
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
                  progress: 0.51,
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
                        SvgPicture.asset("assets/svg/profession.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "What do you do for living?",
                            textColor: Colors.black,
                            fontSize: 16),
                        SizedBox(height: 30),
                        CustomDropDown(
                          text: "Select your career",
                          items: [
                            DropDownItem("Business Owner", "", "Islam"),
                            DropDownItem("Chef", "", "sa"),
                            DropDownItem("Chemist", "", "sa"),
                            DropDownItem("Civil Engineer", "", "sa"),
                            DropDownItem("Computer Engineer", "", "sa"),
                            DropDownItem("Consultant", "", "sa"),
                            DropDownItem("Cosmologist", "", "sa"),
                            DropDownItem("Counselor", "", "sa"),
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
