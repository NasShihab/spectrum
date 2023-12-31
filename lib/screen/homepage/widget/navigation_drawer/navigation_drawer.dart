import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spectrum/core/height_width.dart';
import '../../../../core/text_theme.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      backgroundColor: Color(0xff86bbd8),
      children: [
        height20(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.w,
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset(
                'assets/images/logo.png',
                height: 30.h,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        height10(),
        ExpansionTile(
          backgroundColor: Colors.white,
          title: Text(
            'Solutions',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Text(
                    'Biometric Technology',
                    style: bodySmall(context),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Text(
                    'Digital Identity & Security',
                    style: bodySmall(context),
                  ),
                ),
              ],
            )
          ],
        ),
        ListTile(
          title: Text(
            'Service',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Products',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Showcase',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Company',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ExpansionTile(
          title: Text(
            'Contact',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.map,
                        size: 20.sp,
                        color: Colors.grey,
                      ),
                      width5(),
                      Expanded(
                        child: Text(
                          '12th Floor, 52/1, Hasan Holdings Ltd. New Eskaton '
                          'Road, Dhaka 1000, Bangladesh',
                          style: bodySmall(context),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  height5(),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20.sp,
                        color: Colors.grey,
                      ),
                      width5(),
                      Expanded(
                        child: Text(
                          '+8801615900004',
                          style: bodySmall(context),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  height5(),
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 20.sp,
                        color: Colors.grey,
                      ),
                      width5(),
                      Expanded(
                        child: Text(
                          'spectrumit.bd@gmail.com',
                          style: bodySmall(context),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  height10(),
                ],
              ),
            )
          ],
        ),
        ExpansionTile(
          title: Text(
            'About Us',
            style: bodySmall(context)?.copyWith(fontWeight: FontWeight.bold),
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'We are a software development company delivering splendid business '
                'IT Solutions and related services to customers home & aboard. '
                'Our development services are led by our dedicated and passionate '
                'team to provide best industry practice combined with technology '
                'expertise and business knowledge to drive the digital transformation. '
                'Founded in 2012 on a solid foundation of honest family values, '
                'we have built lasting relationships that have kept us on the cutting '
                'edge of innovation ever since. Our main area of expertise is Software'
                ' development, Biometric Authentication System, Digital Identity & '
                'Security System, Smart Card Personalization & Printing Solution, Web '
                '& Mobile Application Development, Payment Gateway & API Integration, '
                'E-commerce, Tracking System, Facebook & Other Social Media Marketing, '
                'Email marketing, SMS marketing, etc.',
                style: bodySmall(context),
              ),
            )
          ],
        ),
      ],
    );
  }
}
