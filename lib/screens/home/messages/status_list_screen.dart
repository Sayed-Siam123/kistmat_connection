import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/cache_image.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

class StatusListScreen extends StatefulWidget {
  @override
  _StatusListScreenState createState() => _StatusListScreenState();
}

class _StatusListScreenState extends State<StatusListScreen> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Stack(
                    children: [
                      AppCacheImage(
                        width: hp(7),
                        height: hp(7),
                        round: hp(6),
                        imageUrl:
                            "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/e43107fa73798ded74d1b909bafd0792-1580663169328/bc0b122a-72c6-4148-afea-710f3b53efda.jfif",
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Icon(
                          Icons.add_circle,
                          size: 20,
                          color: kPrimaryLightColor,
                        ),
                      )
                    ],
                  ),
                  title: CenterText(
                    text: "My Status",
                    textColor: Colors.black,
                    fontSize: null,
                    isBold: true,
                  ),
                  subtitle: CenterText(
                      text: "Tap to add status update",
                      isBold: true,
                      fontSize: null),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: CenterText(
                      text: "Recent Status Updates",
                      textColor: Colors.black,
                      fontSize: 20),
                ),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
                UserStatusItem(),
              ]),
        ),
        Positioned(
          right: 20,
          bottom: 100,
          child: Column(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: kPrimaryLightColor,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class UserStatusItem extends StatelessWidget {
  const UserStatusItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return ListTile(
      leading: AppCacheImage(
        width: hp(7),
        height: hp(7),
        round: hp(6),
        imageUrl:
            "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/e43107fa73798ded74d1b909bafd0792-1580663169328/bc0b122a-72c6-4148-afea-710f3b53efda.jfif",
      ),
      title: CenterText(
        text: "Pankaj, 28",
        textColor: Colors.grey,
        fontSize: null,
        isBold: true,
      ),
      subtitle: CenterText(
          text: "Today, 05:44 pm",
          textColor: Color(0xFF413E3F),
          isBold: true,
          fontSize: null),
    );
  }
}
