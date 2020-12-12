import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/account_recovery.dart';
import 'package:kistmat_connection/screens/login_with_phone.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:kistmat_connection/widgets/round_button.dart';
import 'package:kistmat_connection/widgets/round_button_icon.dart';
import 'package:responsive_screen/responsive_screen.dart';

import 'login_with_email.dart';

class WelcomeScreen extends StatefulWidget {
  static String ID = "/welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(context).wp;
    final Function hp = Screen(context).hp;
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Row(
              children: [
                Text(
                  "Kismat\nKonnection",
                  style: TextStyle(
                      fontSize: 60,
                      color: kPrimaryLightColor,
                      fontFamily: 'edward',
                      height: 0.9),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AccountRecovery.ID);
                  },
                  child: SvgPicture.asset(
                    "assets/svg/info.svg",
                    width: 30,
                    height: 30,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: RoundButtonIcon(
                    fontSize: 16,
                    iconSize: 20,
                    isBold: true,
                    round: 10,
                    iconPath: "assets/svg/email.svg",
                    text: "Continue with email",
                    width: 80,
                    textStyle: GoogleFonts.poppins(),
                    textColor: Colors.white,
                    color: Color(0xFF03C6DB),
                    function: () {
                      Navigator.pushNamed(context, LoginWithEmail.ID);
                    },
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: RoundButtonIcon(
                    round: 10,
                    iconSize: 30,
                    iconColor: Color(0xFFFFFFFF),
                    isBold: true,
                    iconPath: "assets/svg/facebook.svg",
                    fontSize: 16,
                    text: "Continue with facebook",
                    width: 80,
                    textStyle: GoogleFonts.poppins(),
                    textColor: Colors.white,
                    color: Color(0xFF3B5998),
                    function: () {},
                  ),
                ),
                SizedBox(height: 15),
                CenterText(
                    textStyle: GoogleFonts.poppins(),
                    text:
                        "By continuing, you agree\nto our Terms & Privacy Policy.",
                    textColor: Colors.white,
                    fontSize: hp(2),
                    isCenter: true),
                SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
