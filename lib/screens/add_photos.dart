import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/home_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

import 'EthinicOriginScreen.dart';

class AddPhotosScreen extends StatefulWidget {
  static String ID = "/add_photos";

  @override
  _AddPhotosScreenState createState() => _AddPhotosScreenState();
}

class _AddPhotosScreenState extends State<AddPhotosScreen> {
  List<String> items = ["Yes", "No"];

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
                  progress: 1,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 0.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "Add Photos",
                            textColor: Colors.black,
                            fontSize: fontsize2-1),
                        CenterText(
                            isCenter: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "Hold, drag and drop to reorder",
                            textColor: Colors.grey,
                            fontSize: 16),
                        SizedBox(height: 0),
                        Expanded(
                          child: Center(
                            child: Container(
                              width: SizeConfig.screenWidth,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        InputImage(),
                                        InputImage(),
                                        InputImage(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InputImage(),
                                        InputImage(),
                                        InputImage(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InputImage(),
                                        InputImage(),
                                        InputImage(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, HomeScreen.ID);
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

class InputImage extends StatelessWidget {
  const InputImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return Expanded(
      child: Container(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(hp(1)),
              child: AspectRatio(
                aspectRatio: 1 / 1.3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLightGreyColor),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    color: Color(0xFFD6D6D6),
                    strokeWidth: 2,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: hp(4),
                width: hp(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kPrimaryLightColor),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
