import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/home_screen.dart';
import 'package:kistmat_connection/screens/welcome_screen.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushNamedAndRemoveUntil(
          context, WelcomeScreen.ID, (route) => false);
    });

    // Future.delayed(const Duration(milliseconds: 1000), () {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, HomeScreen.ID, (route) => false);
    // });

  }

/*child: Image.asset(
  "assets/images/bg.png",
  fit: BoxFit.fitWidth,
  width: double.infinity,
  )
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Center(
          child: Text(
            "Kismat\nKonnection",
            style: TextStyle(
                fontSize: 70,
                color: kPrimaryDarkColor,
                fontFamily: 'edward',
                height: 0.9),
          )
          /*CenterText(
            text: "Kismat",
            Edwardian
            textStyle: GoogleFonts.edwardian,
            textColor: kPrimaryLightColor,
            fontSize: 45,
            isBold: true,
          )*/
          ,
        ),
      ),
    );
  }
}
