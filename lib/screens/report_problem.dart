import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';

class ReportAProblem extends StatefulWidget {
  static String ID = "/report_problem";

  @override
  _ReportAProblemState createState() => _ReportAProblemState();
}

class _ReportAProblemState extends State<ReportAProblem> {
  List<String> items = ["Yes", "No"];

  int _selected_education = -1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig.screenHeight * 0.78,
                    margin: EdgeInsets.only(top: 60.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/svg/business_report.svg",
                              width: 100, height: 100),
                          SizedBox(height: 20),
                          CenterText(
                              isBold: true,
                              textStyle: GoogleFonts.poppins(),
                              text: "Give us more details",
                              textColor: kPrimaryDarkColor,
                              fontSize: fontSize+2),
                          SizedBox(height: 20),
                          CenterText(
                              isCenter: true,
                              isBold: true,
                              textStyle: GoogleFonts.poppins(),
                              text:
                                  """Please provide complete detail of the issue you are having, and we will try to resolve within 48 hours.
                              """,
                              textColor: Color(0xFF414789),
                              fontSize: fontSize),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: kPrimaryLightColor, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                maxLines: 200,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText:
                                        "Explain your issue in detail...."),
                              ),
                            ),
                          )),
                          SizedBox(height: 10),
                          RaisedButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  kPrimaryDarkColor,
                                  kPrimaryLightColor
                                ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: CenterText(
                                    text: "Submit",
                                    textColor: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CenterText(
                          text: "Report Problem",
                          textColor: Colors.black,
                          fontSize: fontSize+2,
                          isBold: true,
                        ),
                      ],
                    ),
                  ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
