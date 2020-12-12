import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/ColorLibrary/HexColor.dart';
import 'package:kistmat_connection/models/features.dart';
import 'package:kistmat_connection/utils/constants.dart';

import 'FeatureSlideDot.dart';
import 'center_text.dart';

class FeatureItem extends StatelessWidget {
  final int index;

  FeatureItem(this.index);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: SvgPicture.asset(
                "assets/svg/feature${(this.index + 1).toString()}.svg",
                width: 70,
                height: 70,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text("Unlimited Reward",
                  style: GoogleFonts.poppins(
                    textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Text("Rewind back and see the last person",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 15,
                    ),
                  )),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < featureList.length; i++)
                          if (i == this.index)
                            FeatureSlideDot(true)
                          else
                            FeatureSlideDot(false)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      height: 200,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Stack(
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: [

                          Positioned(
                              top: 20,
                              child: Container(
                                height: 90,
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("1",style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 40,
                                          color: blue,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),),
                                    Text("Months",style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: blue,
                                          fontSize: 16
                                      ),
                                    ),),
                                  ],
                                ),
                              )
                          ),

                          Positioned(
                            top: 150,
                            child: CenterText(
                                text: "£ 14.99",
                                textColor: blue,
                                isBold: true,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      height: 200,
                      width: 110,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [blue1, blue2],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border: Border.all(color: blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Stack(
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                              top: -13,
                              child: Container(
                                height: 25,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: yellow,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text("Most Popular",style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),)),
                              ),
                          ),

                          Positioned(
                              top: 20,
                              child: Container(
                                height: 90,
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("3",style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),),
                                    Text("Months",style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16
                                      ),
                                    ),),
                                  ],
                                ),
                              )
                          ),


                          Positioned(
                              top: 120,
                              child: Container(
                                height: 20,
                                width: 110,
                                color: yellow,
                                child: Center(
                                  child: Text(
                                    "Save 30%",style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  ),
                                ),
                              )
                          ),

                          Positioned(
                            top: 150,
                            child: CenterText(
                                text: "£ 12.99",
                                textColor: Colors.white,
                                isBold: true,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      height: 200,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            overflow: Overflow.visible,
                            children: [

                              Positioned(
                                  top: 20,
                                  child: Container(
                                    height: 90,
                                    width: 110,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("6",style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 40,
                                              color: blue,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),),
                                        Text("Months",style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: blue,
                                              fontSize: 16
                                          ),
                                        ),),
                                      ],
                                    ),
                                  )
                              ),

                              Positioned(
                                  top: 120,
                                  child: Container(
                                    height: 20,
                                    width: 110,
                                    color: yellow,
                                    child: Center(
                                      child: Text(
                                        "Save 33%",style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      ),
                                    ),
                                  )
                              ),

                              Positioned(
                                top: 150,
                                child: CenterText(
                                    text: "£ 9.99",
                                    textColor: blue,
                                    isBold: true,
                                    fontSize: 16),
                              ),
                            ],
                          ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Text("You can cancel your subscription at any time.\nOne-time payment.",style: GoogleFonts.poppins(
                textStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),
                )
              ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: RichText(
                softWrap: true,
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                      'If you decide to purchase a subscription, your payment will be processed via your google Play account. your subscription will be automatically renewed, and the corresponding amount will be charged to your account 24 hours before the end of each billing period. You can disable the automatic renewal at any time in your Play Store settings',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.black,fontSize: 13),
                      )
                    ),
                    TextSpan(
                      text: ' Terms and Conditions of use',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryDarkColor,fontSize: 13),
                      )
                    ),
                    TextSpan(
                        text: ' and',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black,fontSize: 13)),
                        ),
                    TextSpan(
                      text: ' Privacy Policy.',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryDarkColor,fontSize: 13),
                      )
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
