import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spectrum/core/height_width.dart';
import 'package:spectrum/core/text_theme.dart';
import 'package:spectrum/screen/homepage/card_view_widget/model.dart';

class ExclusiveSolutions extends StatelessWidget {
  const ExclusiveSolutions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(minCardList.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      minCardList[index].image,
                      height: 50.h,
                      width: 50.w,
                    ),
                    width5(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          minCardList[index].title,
                          style: bodySmall(context)?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: myWidth(context) * .3,
                          child: Text(
                            minCardList[index].text,
                            style: bodySmall(context)?.copyWith(fontSize: 12.sp),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
