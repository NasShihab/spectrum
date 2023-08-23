import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PosterView extends StatefulWidget {
  const PosterView({super.key});

  @override
  State<PosterView> createState() => _PosterViewState();
}

class _PosterViewState extends State<PosterView> {
  // final controller = Get.put(PageViewController());
  @override
  Widget build(BuildContext context) {
    return getSliderImages();
  }

  Widget getSliderImages() {
    return SizedBox(
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
    );
  }
}

List<String> images = [
  'assets/images/page1.png',
  'assets/images/page2.png',
  'assets/images/page3.png',
];
