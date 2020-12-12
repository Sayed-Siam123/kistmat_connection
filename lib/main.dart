import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kistmat_connection/screens/DOBScreen.dart';
import 'package:kistmat_connection/screens/EducationScreen.dart';
import 'package:kistmat_connection/screens/EthinicOriginScreen.dart';
import 'package:kistmat_connection/screens/Features_Screen.dart';
import 'package:kistmat_connection/screens/SecterianDivisionScreen.dart';
import 'package:kistmat_connection/screens/about_screen.dart';
import 'package:kistmat_connection/screens/account_recovery.dart';
import 'package:kistmat_connection/screens/add_photos.dart';
import 'package:kistmat_connection/screens/age_filter_screen.dart';
import 'package:kistmat_connection/screens/children_Screen.dart';
import 'package:kistmat_connection/screens/distance_filter_screen.dart';
import 'package:kistmat_connection/screens/edit_profile.dart';
import 'package:kistmat_connection/screens/education_filter_screen.dart';
import 'package:kistmat_connection/screens/email_verification_screen.dart';
import 'package:kistmat_connection/screens/ethnicities_filter_screen.dart';
import 'package:kistmat_connection/screens/exercise_filter_screen.dart';
import 'package:kistmat_connection/screens/features_screen(old).dart';
import 'package:kistmat_connection/screens/filter_screen.dart';
import 'package:kistmat_connection/screens/gender_screen.dart';
import 'package:kistmat_connection/screens/gym_screen.dart';
import 'package:kistmat_connection/screens/height_filter_screen.dart';
import 'package:kistmat_connection/screens/height_screen.dart';
import 'package:kistmat_connection/screens/help_center_1.dart';
import 'package:kistmat_connection/screens/help_center_2.dart';
import 'package:kistmat_connection/screens/home_screen.dart';
import 'package:kistmat_connection/screens/its_latch_screen.dart';
import 'package:kistmat_connection/screens/login_with_email.dart';
import 'package:kistmat_connection/screens/login_with_phone.dart';
import 'package:kistmat_connection/screens/marital_status_filter_screen.dart';
import 'package:kistmat_connection/screens/marital_status_screen.dart';
import 'package:kistmat_connection/screens/name_screen.dart';
import 'package:kistmat_connection/screens/notification_list.dart';
import 'package:kistmat_connection/screens/phone_verification_screen.dart';
import 'package:kistmat_connection/screens/premuim_screen.dart';
import 'package:kistmat_connection/screens/profession_filter_screen.dart';
import 'package:kistmat_connection/screens/religion_filter_screen.dart';
import 'package:kistmat_connection/screens/religion_screen.dart';
import 'package:kistmat_connection/screens/relocate_screen.dart';
import 'package:kistmat_connection/screens/report_problem.dart';
import 'package:kistmat_connection/screens/sectarian_filter_screen.dart';
import 'package:kistmat_connection/screens/selfie_screen.dart';
import 'package:kistmat_connection/screens/splash.dart';
import 'package:kistmat_connection/screens/welcome_screen.dart';
import 'package:kistmat_connection/screens/home/settings_Screen.dart';
import 'package:kistmat_connection/screens/home/settings_Screen.dart';
import 'package:kistmat_connection/screens/chat_messages_screen.dart';
import 'package:kistmat_connection/screens/view_personal_profile.dart';

import 'package:kistmat_connection/screens/work_status_screen.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:sentry/sentry.dart';
import 'dart:async';

final sentry = SentryClient(
    dsn: "https://014504073d0f4d1093df73dad83335ff@o477848.ingest.sentry.io/5519461");

// void main() async {
//   runZonedGuarded(
//     () => runApp(MyApp()),
//     (error, stackTrace) async {
//       await sentry.captureException(
//         exception: error,
//         stackTrace: stackTrace,
//       );
//     },
//   );
// }

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(DevicePreview(builder:(context) => MyApp(),enabled: !kReleaseMode,));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/bg.png"), context);

    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          unselectedWidgetColor: kForegroundColor,
          highlightColor: kPrimaryLightColor,
          textSelectionColor: kPrimaryDarkColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
        routes: {
          '/welcome': (context) => SplashScreen(),
          WelcomeScreen.ID: (context) => WelcomeScreen(),
          LoginWithEmail.ID: (context) => LoginWithEmail(),
          LoginWithPhoneScreen.ID: (context) => LoginWithPhoneScreen(),
          EmailVerificationScreen.ID: (context) => EmailVerificationScreen(),
          PhoneVerificationScreen.ID: (context) => PhoneVerificationScreen(),
          NameScreen.ID: (context) => NameScreen(),
          DOBScreen.ID: (context) => DOBScreen(),
          GenderScreen.ID: (context) => GenderScreen(),
          EthnicOriginScreen.ID: (context) => EthnicOriginScreen(),
          ReligionScreen.ID: (context) => ReligionScreen(),
          SecterianDivision.ID: (context) => SecterianDivision(),
          EducationScreen.ID: (context) => EducationScreen(),
          WorkStatusScreen.ID: (context) => WorkStatusScreen(),
          MaritalStatusScreen.ID: (context) => MaritalStatusScreen(),
          HeightScreen.ID: (context) => HeightScreen(),
          GymScreen.ID: (context) => GymScreen(),
          ReclocateScreen.ID: (context) => ReclocateScreen(),
          ChildrenScreen.ID: (context) => ChildrenScreen(),
          AboutScreen.ID: (context) => AboutScreen(),
          SelfieScreen.ID: (context) => SelfieScreen(),
          AddPhotosScreen.ID: (context) => AddPhotosScreen(),
          HomeScreen.ID: (context) => HomeScreen(),
          FilterScreen.ID: (context) => FilterScreen(),
          HeightFilterScreen.ID: (context) => HeightFilterScreen(),
          AgeFilterScreen.ID: (context) => AgeFilterScreen(),
          DistanceFilterScreen.ID: (context) => DistanceFilterScreen(),
          EthnicitiesFilterScreen.ID: (context) => EthnicitiesFilterScreen(),
          ExerciseFilterScreen.ID: (context) => ExerciseFilterScreen(),
          MaritalStatusFilterScreen.ID: (context) =>
              MaritalStatusFilterScreen(),
          SecterianFilterScreen.ID: (context) => SecterianFilterScreen(),
          ProfessionFilterScreen.ID: (context) => ProfessionFilterScreen(),
          EducationFilterScreen.ID: (context) => EducationFilterScreen(),
          ReligionFilterScreen.ID: (context) => ReligionFilterScreen(),
          ItsMatchHomeScreen.ID: (context) => ItsMatchHomeScreen(),
          SettingsScreen.ID: (context) => SettingsScreen(),
          PremiumScreen.ID: (context) => PremiumScreen(),
          EditProfileScreen.ID: (context) => EditProfileScreen(),
          NotificationList.ID: (context) => NotificationList(),
          HelpCenter1.ID: (context) => HelpCenter1(),
          HelpCenter2.ID: (context) => HelpCenter2(),
          ReportAProblem.ID: (context) => ReportAProblem(),
          Features_Screen.ID: (context) => Features_Screen(),
          AccountRecovery.ID: (context) => AccountRecovery(),
          ChatMessagesScreen.ID: (context) => ChatMessagesScreen(),
          ViewPersonalProfile.ID: (context) => ViewPersonalProfile()
        });
  }
}
