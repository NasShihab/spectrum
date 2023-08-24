import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/text_theme.dart';
import '../homepage/homepage.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> screen = [
    const HomePage(),
    const Scaffold(
      body: Center(
        child: Text('Notification'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Chat'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Calendar'),
      ),
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: Container(
        height: 40.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(20.r),
          //   bottomRight: Radius.circular(20.r),
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bottomIconText(
              context,
              icon: CupertinoIcons.house_fill,
              title: 'Home',
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              color: selectedIndex == 0 ? Colors.blue : Colors.black,
            ),
            bottomIconText(
              context,
              icon: CupertinoIcons.bell_fill,
              title: 'Notification',
              color: selectedIndex == 1 ? Colors.blue : Colors.black,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            bottomIconText(context,
                icon: CupertinoIcons.chat_bubble_fill,
                title: 'Chat', onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            }, color: selectedIndex == 2 ? Colors.blue : Colors.black),
            bottomIconText(context,
                icon: CupertinoIcons.profile_circled,
                title: 'Profile', onTap: () {
              setState(() {
                selectedIndex = 3;
              });
            }, color: selectedIndex == 3 ? Colors.blue : Colors.black),
          ],
        ),
      ),
    );
  }
}

Widget bottomIconText(
  BuildContext context, {
  required dynamic icon,
  required dynamic color,
  required String title,
  required void Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 20.sp,
        ),
        Text(
          title,
          style: bodySmall(context)?.copyWith(fontSize: 12.sp),
        )
      ],
    ),
  );
}
