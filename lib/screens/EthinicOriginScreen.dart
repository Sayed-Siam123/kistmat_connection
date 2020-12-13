import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/drop_down_item.dart';
import 'package:kistmat_connection/screens/religion_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class EthnicOriginScreen extends StatefulWidget {
  static String ID = "/ethinic_origin_screen";

  @override
  _EthnicOriginScreenState createState() => _EthnicOriginScreenState();
}

class _EthnicOriginScreenState extends State<EthnicOriginScreen> {
  Country _selected;

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          color: Colors.transparent,
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
                            Navigator.pushNamed(context, ReligionScreen.ID);
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
                  progress: 0.318,
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
                        SvgPicture.asset("assets/svg/ethnicity.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "What's your ethnic origin?",
                            textColor: Colors.black,
                            fontSize: fontsize2),
                        SizedBox(height: 30),
                        CustomDropDown(
                          text: "Select your country",
                          items: [
                            DropDownItem("United kingdom",
                                "assets/svg/flag_uk.svg", "United kingdom"),
                            DropDownItem("United states",
                                "assets/svg/flag_usa.svg", "United states"),
                            DropDownItem("Vietnam", "assets/svg/flag_vietnam.svg",
                                "Vietnam"),
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

class BackWithProgress extends StatelessWidget {
  BackWithProgress({this.progress, this.onBackClick});

  Function onBackClick;
  double progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * progress,
            height: 10,
            decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              onBackClick.call();

              // Navigator.pop(context);
            },
            child:
                SvgPicture.asset("assets/svg/back.svg", width: 20, height: 20),
          ),
        ],
      ),
    );
  }
}
