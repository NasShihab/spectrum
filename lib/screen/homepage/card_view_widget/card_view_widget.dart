import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spectrum/core/height_width.dart';
import 'package:spectrum/screen/homepage/card_view_widget/model.dart';

import '../../../core/text_theme.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(cardList.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: SizedBox(
              height: 180.h,
              width: 150.w,
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Column(
                    children: [
                      Image.asset(
                        cardList[index].image,
                        height: 50.h,
                        width: 50.w,
                      ),
                      Text(
                        cardList[index].title,
                        style: bodyMedium(context)
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      height5(),
                      Text(
                        cardList[index].text,
                        style: bodySmall(context)?.copyWith(fontSize: 12.sp),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
