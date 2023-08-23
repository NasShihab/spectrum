import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spectrum/core/height_width.dart';
import 'package:spectrum/core/text_theme.dart';
import 'package:spectrum/screen/homepage/card_view_widget/card_view_widget.dart';
import 'package:spectrum/screen/homepage/page_view_widget/page_view_widget.dart';
import 'package:spectrum/screen/navigation_drawer.dart';

import 'homepage/exclusive_solutions/exclusive_solutions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spectrum'),
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: false,
      ),
      drawer: const MyNavigationDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 240.h,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/background2.jpg',
                        height: 150.h,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        top: 20.h,
                        left: myWidth(context) * .1,
                        right: myWidth(context) * .1,
                        child: Text(
                          'IT Solution for a Digital World',
                          style: titleSmall(context)
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                      Positioned(
                          top: 50.h,
                          left: myWidth(context) * .10,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text('About Us'))),
                      Positioned(
                          top: 50.h,
                          right: myWidth(context) * .10,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: const Text('Our Team'),
                          )),
                      Positioned(
                        left: myWidth(context) * .10,
                        right: myWidth(context) * .10,
                        bottom: 5.h,
                        child: const PosterView(),
                      ),
                    ],
                  ),
                ),
                height10(),
                const CardViewWidget(),
                height20(),
                Text(
                  'Our Exclusive Solutions',
                  style: bodyLarge(context),
                ),
                height10(),
                const ExclusiveSolutions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
