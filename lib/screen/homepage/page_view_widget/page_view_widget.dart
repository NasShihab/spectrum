import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/height_width.dart';
import '../../../core/text_theme.dart';

class PosterView extends StatelessWidget {
  const PosterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            child: SizedBox(
              height: 120.h,
              width: double.infinity,
              child: PageView.builder(
                controller: PageController(
                  viewportFraction: .8,
                  initialPage: 1,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          images[index].toString(),
                          height: 120.h,
                          width: 240.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> images = [
  'assets/images/page1.png',
  'assets/images/page2.png',
  'assets/images/page3.png',
];
