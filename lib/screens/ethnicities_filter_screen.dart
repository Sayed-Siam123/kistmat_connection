import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class EthnicitiesFilterScreen extends StatefulWidget {
  static String ID = "/ethnicity_filter";

  @override
  _EthnicitiesFilterScreenState createState() =>
      _EthnicitiesFilterScreenState();
}

class _EthnicitiesFilterScreenState extends State<EthnicitiesFilterScreen> {
  int _index = 0;
  List<String> items = [
    "All",
    "Arab",
    "Bangladeshi",
    "Black/African",
    "Caucasian/White",
    "Far East Asian",
    "Hispanic",
    "Indian",
    "Mixed Race"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
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
                  Center(
                    child: CenterText(
                      text: "Ethnicities",
                      textColor: Colors.black,
                      fontSize: 25,
                      isBold: true,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                      padding: EdgeInsets.all(5),
                      itemCount: items.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            FilterListItem(
                              onClick: (int value) {
                                setState(() {
                                  _index = value;
                                });
                              },
                              index: index,
                              text: items[index],
                              isClicked: _index == index,
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterListItem extends StatefulWidget {
  FilterListItem({
    @required this.text,
    @required this.isClicked,
    @required this.index,
    @required this.onClick,
  });

  bool isClicked;
  int index;
  Function(int index) onClick;
  String text;

  @override
  _FilterListItemState createState() => _FilterListItemState();
}

class _FilterListItemState extends State<FilterListItem> {
  @override
  Widget build(BuildContext context) {
    widget.isClicked = widget.isClicked ?? false;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          widget.onClick.call(this.widget.index);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CenterText(
                    text: this.widget.text,
                    textColor:
                        widget.isClicked ? kPrimaryLightColor : Colors.black,
                    fontSize: 20,
                    isBold: true,
                  ),
                ),
                Spacer(),
                if (widget.isClicked)
                  Icon(Icons.check, size: 40, color: kPrimaryLightColor)
              ],
            ),
            if (widget.isClicked) Divider()
          ],
        ),
      ),
    );
  }
}
