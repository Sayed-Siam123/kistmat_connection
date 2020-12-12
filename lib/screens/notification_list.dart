import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class NotificationList extends StatefulWidget {
  static String ID = "/notification_list";

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
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
                      text: "Notification",
                      textColor: Colors.black,
                      fontSize: 25,
                      isBold: true,
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      UserNotificationListCard(index: 1,),
                      UserNotificationListCard(index: 2,),
                      UserNotificationListCard(index: 3,),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserNotificationListCard extends StatelessWidget {
  List<Color> colors = [
    Color(0XFF21A67A),
    Color(0xFFF0A92E),
    Color(0xFF007BC2),
    Color(0xFF477B72),
    Color(0xFF9A5BCE),
  ];

  UserNotificationListCard({this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 10, 2, 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors[index % 5],
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.notifications_active,
                    size: 30,
                    color: colors[index % 5],
                  ),
                  title: CenterText(
                    isCenter: false,
                    text: "Message",
                    isBold: true,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CenterText(
                        isCenter: false,
                        text: "Lorem ipsum is placeholder text commonly",
                        textColor: Colors.black.withOpacity(0.85),
                      ),
                      Row(
                        children: [
                          Spacer(),
                          CenterText(
                            text: "",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
