import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kistmat_connection/screens/add_photos.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/utils/dialogs.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EducationScreen.dart';
import 'EthinicOriginScreen.dart';

class SelfieScreen extends StatefulWidget {
  static String ID = "/selfie_screen";

  @override
  _SelfieScreenState createState() => _SelfieScreenState();
}

class _SelfieScreenState extends State<SelfieScreen> {
  List<String> items = ["Yes", "No"];

  int _selected_education = -1;

  final picker = ImagePicker();
  File image;

  void pickImage(ImageSource imageSource) async {
    PickedFile galleryImage =
        await picker.getImage(source: imageSource, imageQuality: 40);
    setState(() {
      image = File(galleryImage?.path);
    });
  }

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
                Visibility(
                  visible: false,
                  child: image != null
                      ? Image.file(
                          image,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        )
                      : Container(),
                ),
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
                  progress: 0.95,
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              (MediaQuery.of(context).size.width * 0.65) / 2),
                          child: Container(
                            child: image != null
                                ? Image.file(
                                    image,
                                    width:
                                        MediaQuery.of(context).size.width * 0.65,
                                    height:
                                        MediaQuery.of(context).size.width * 0.65,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.65,
                                    height:
                                        MediaQuery.of(context).size.width * 0.65,
                                    color: kPrimaryLightestColor,
                                  ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                                child: CenterText(
                              text: "Please take a selfie for verification",
                              textColor: Colors.black,
                              fontSize: 16,
                              isBold: true,
                              isCenter: true,
                            )),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    color: Colors.white,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                        child: CameraGalleryBottomSheet(
                                          cameraClick: () =>
                                              pickImage(ImageSource.camera),
                                          galleryClick: () =>
                                              pickImage(ImageSource.gallery),
                                        )),
                                  );
                                });
                            /*Navigator.pushNamed(
                                context, AboutScreen.ABOUT_SCREEN);*/
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
                                  text: "TAKE A SELFIE",
                                  textColor: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AddPhotosScreen.ID);
                            /*Navigator.pushNamed(
                                context, AboutScreen.ABOUT_SCREEN);*/
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
                                  text: "Next",
                                  textColor: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                        ),
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
