import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kistmat_connection/ColorLibrary/HexColor.dart';
import 'package:kistmat_connection/models/features.dart';
import 'package:kistmat_connection/widgets/FeatureItem.dart';
import 'package:kistmat_connection/widgets/FeatureSlideDot.dart';

class Features_Screen extends StatefulWidget {
  static String ID = "/feature_screen";

  @override
  _Features_ScreenState createState() => _Features_ScreenState();
}

class _Features_ScreenState extends State<Features_Screen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Color> colors = [
    Color(0xFFED1E79),
    Color(0xFF008080),
    Color(0xFF800080),
    Color(0xFFFED600),
    Color(0xFF03C6DB),
    Color(0xFF009245),
    Color(0xFFFF33CC),
    Color(0xFF5C47E7)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer.periodic(Duration(seconds: 5), (Timer timer) {
    //   if (_currentPage < 2) {
    //     _currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    //
    //   _pageController.animateToPage(
    //     _currentPage,
    //     duration: Duration(milliseconds: 300),
    //     curve: Curves.easeIn,
    //   );
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          fit: StackFit.loose,
          overflow: Overflow.visible,
          children: [
            Container(
              height: constraints.maxHeight * 0.2,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                color: colors[_currentPage],
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [HexColor("#57BE34"),HexColor("#8FD354").withOpacity(0.9)],
                // )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: featureList.length,
                  itemBuilder: (ctx, i) => FeatureItem(i),
                ),
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //           begin: Alignment.topCenter,
            //           end: Alignment.bottomCenter,
            //           colors: [Colors.blue, Colors.red])
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(20),
            //     child: Column(
            //       children: <Widget>[
            //         Expanded(
            //           child: Stack(
            //             alignment: AlignmentDirectional.bottomCenter,
            //             children: <Widget>[
            //               PageView.builder(
            //                 physics: BouncingScrollPhysics(),
            //                 scrollDirection: Axis.horizontal,
            //                 controller: _pageController,
            //                 onPageChanged: _onPageChanged,
            //                 itemCount: featureList.length,
            //                 itemBuilder: (ctx, i) => FeatureItem(i),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
