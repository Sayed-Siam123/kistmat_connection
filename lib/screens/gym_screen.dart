import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/relocate_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EducationScreen.dart';
import 'EthinicOriginScreen.dart';

class GymScreen extends StatefulWidget {
  static String ID = "/gym_screen";

  @override
  _GymScreenState createState() => _GymScreenState();
}

class _GymScreenState extends State<GymScreen> {
  List<String> items = ["Never", "Occasionally", "Frequently", "Always"];

  int _selected_education = -1;

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
                    /*          Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SecterianDivision.SECTERIAN_DIVISION);
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
                        ))*/
                  ],
                ),
                BackWithProgress(
                  onBackClick: () {
                    Navigator.pop(context);
                  },
                  progress: 0.696,
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
                        SvgPicture.asset("assets/svg/gym.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "How often do you exercise?",
                            textColor: Colors.black,
                            fontSize: fontsize2),
                        SizedBox(height: 20),
                        Expanded(
                            child: ListView.builder(
                                padding: EdgeInsets.all(5),
                                itemCount: items.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      StringSelectionItem(
                                        index: index,
                                        selectedValue: (int index) {
                                          setState(() {
                                            _selected_education = index;
                                          });
                                        },
                                        text: items[index],
                                        isSelected: _selected_education == index,
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  );
                                })),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, ReclocateScreen.ID);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
