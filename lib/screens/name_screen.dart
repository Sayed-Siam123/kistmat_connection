import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/DOBScreen.dart';
import 'package:kistmat_connection/screens/gender_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:kistmat_connection/widgets/input_container.dart';

import 'EthinicOriginScreen.dart';

class NameScreen extends StatefulWidget {
  static String ID = "/name_screen";

  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
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
                            Navigator.pushNamed(context, GenderScreen.ID);
                            //TODO:: Here I Have to  change it to DOBScreen
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
                  progress: 0.066,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 60.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/name.svg",
                              width: svgSize, height: svgSize),
                          SizedBox(height: 20),
                          CenterText(
                              isBold: true,
                              textStyle: GoogleFonts.poppins(),
                              text: "What's your name?",
                              textColor: Colors.black,
                              fontSize: 16),
                          SizedBox(height: 20),
                          InputContainer(
                            showBorder: true,
                            borderWidth: kBorderWidth,
                            radius: kBorderRadius,
                            borderColor: kBorderColor,
                            color: Colors.white,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.name,
                              onChanged: (value) {},
                              style: TextStyle(
                                  color: kPrimaryDarkColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xFFDFE3E6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                labelStyle: TextStyle(
                                    color: kPrimaryDarkColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                hintText: "Display Name",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          InputContainer(
                            showBorder: true,
                            containerHeight: kBorderHeight,
                            borderWidth: kBorderWidth,
                            radius: kBorderRadius,
                            borderColor: kBorderColor,
                            color: Colors.white,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.name,
                              onChanged: (value) {},
                              style: TextStyle(
                                  color: kPrimaryDarkColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xFFDFE3E6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                labelStyle: TextStyle(
                                    color: kPrimaryDarkColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                hintText: "First Name",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          InputContainer(
                            showBorder: true,
                            containerHeight: kBorderHeight,
                            borderWidth: kBorderWidth,
                            radius: kBorderRadius,
                            borderColor: kBorderColor,
                            color: Colors.white,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.name,
                              onChanged: (value) {},
                              style: TextStyle(
                                  color: kPrimaryDarkColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Color(0xFFDFE3E6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                labelStyle: TextStyle(
                                    color: kPrimaryDarkColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                hintText: "Second Name",
                                border: InputBorder.none,
                              ),
                            ),
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
