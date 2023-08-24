import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spectrum/core/height_width.dart';
import 'package:spectrum/core/text_theme.dart';
import 'package:spectrum/screen/homepage/card_view_widget/card_view_widget.dart';
import 'package:spectrum/screen/homepage/page_view_widget/page_view_widget.dart';
import 'package:spectrum/screen/homepage/navigation_drawer.dart';

import 'exclusive_solutions/exclusive_solutions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spectrum', style: bodyLarge(context),),
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: false,
        actions: [
          Icon(Icons.login, size: 20.sp,),
          width10(),
        ],
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
                const PosterView(),
                height10(),
                const CardViewWidget(),
                height20(),
                Text(
                  'Our Exclusive Solutions',
                  style: bodyMedium(context)
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                height10(),
                const ExclusiveSolutions(),
                height20(),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Image.asset(
                        'assets/images/background2.jpg',
                        height: 300.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Our Consultancy',
                            style: titleMedium(context)
                                ?.copyWith(color: Colors.white),
                          ),
                          Text(
                            'Let us help you architect the right solution '
                            'using the best technologies available.We '
                            'provide a wide range of consulting services '
                            'undertaking a comprehensive analysis of your '
                            'existing system, mapping out your plan on the'
                            ' introduction of new components, and guiding '
                            'you in the complex software world.',
                            style: bodySmall(context)
                                ?.copyWith(color: Colors.white),
                          ),
                          height20(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '14\nProject\nComplete',
                                style: bodyMedium(context)?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '42 \n Happy\n Clients',
                                style: bodyMedium(context)?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '8 \n Business \n Partners',
                                style: bodyMedium(context)?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                '7 \n It \n Consultant',
                                style: bodyMedium(context)?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                height20(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
