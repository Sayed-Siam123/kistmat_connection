class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/app_logo.png"), context);
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          unselectedWidgetColor: kForegroundColor,
          textSelectionColor: kPrimaryDarkColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
        routes: {
          '/welcome': (context) => SplashScreen(),
          IntroScreen.INTRO_SCREEN: (context) => IntroScreen(),
          LoginWIthEmail.LOGIN_SCREEN: (context) => LoginWIthEmail(),
          WelcomeScreen.WELCOME_SCREEN: (context) => WelcomeScreen(),
          ForgotPasswordScreen.FORGOT_PASSWORD: (context) =>
              ForgotPasswordScreen(),
          SignUpScreen.SIGNUP_SCREEN: (context) => SignUpScreen(),
          UserHomeScreen.USER_HOME_SCREEN: (context) => UserHomeScreen(),
          RulesRegulationScreen.RULES_REGULATION_SCREEN: (context) =>
              RulesRegulationScreen(),
          SettingsScreen.SETTINGS_SCREEN: (context) => SettingsScreen(),
          UserClassTimings.CLASS_TIMMING: (context) => UserClassTimings(),
          PrivateTrainingScreen.PRIVATE_TRAINING_SCREEN: (context) =>
              PrivateTrainingScreen(),
          NotificationsScreen.NOTIFICATIONS_SCREEN: (context) =>
              NotificationsScreen(),
          AdminHomeScreen.ADMIN_HOME_SCREEN: (context) => AdminHomeScreen(),
          AddClassTiming.ADD_CLASS_TIMMING_SCREEN: (context) =>
              AddClassTiming(),
          AddPrivateTrainingScreen.ADD_PRIVATE_TRAINING: (context) =>
              AddPrivateTrainingScreen(),
          EditRulesRegulation.EDIT_RULES_REGULATION: (context) =>
              EditRulesRegulation(),
          BroadCastNotification.BROAD_CAST_NOTIFICAION: (context) =>
              BroadCastNotification(),
          SlidesListScreen.SLIDES_LIST_SCREEN: (context) => SlidesListScreen(),
          CreateSlideScreen.CREATE_SLIDE_SCREEN: (context) =>
              CreateSlideScreen(),
          UserListScreen.USER_LIST_SCREEN: (context) => UserListScreen(),
          BuyMemberShipScreen.BUY_MEMBER_SHIP: (context) =>
              BuyMemberShipScreen()
        });
  }
}
