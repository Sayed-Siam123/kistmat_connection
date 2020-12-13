import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/EthinicOriginScreen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'DOBScreen.dart';

class GenderScreen extends StatefulWidget {
  static String ID = "/gender_screen";

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int _selectedGender = -1;

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
                            Navigator.pushNamed(context, EthnicOriginScreen.ID);
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
                  progress: 0.186,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 60.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/sex.svg",
                              width: svgSize, height: svgSize),
                          SizedBox(height: 20),
                          CenterText(
                              isBold: true,
                              textStyle: GoogleFonts.poppins(),
                              text: "Specify your gender",
                              textColor: Colors.black,
                              fontSize: fontsize2),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedGender = 0;
                                  });
                                },
                                child: GenderInput(
                                  isSelected: _selectedGender == 0,
                                  path: "assets/svg/male.svg",
                                  text: "Male",
                                ),
                              )),
                              SizedBox(width: 10),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedGender = 1;
                                  });
                                },
                                child: GenderInput(
                                  isSelected: _selectedGender == 1,
                                  path: "assets/svg/female.svg",
                                  text: "Female",
                                ),
                              ))
                            ],
                          )
                        ],
                      ),
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

class GenderInput extends StatelessWidget {
  GenderInput({this.text, this.path, this.isSelected, this.containerHeight});

  String text;
  String path;
  bool isSelected;
  double containerHeight;

  @override
  Widget build(BuildContext context) {
    isSelected = isSelected ?? false;
    return Container(
      width: double.infinity,
      height: kBorderHeight,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: !isSelected ? kGreyColor : kPrimaryLightColor,
              width: kBorderWidth),
          borderRadius: BorderRadius.circular(kBorderRadius)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            path,
            width: 20,
            height: 20,
          ),
          SizedBox(width: 10),
          CenterText(
            text: text,
            textColor: Colors.black,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
