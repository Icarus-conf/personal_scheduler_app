import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 10.r,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return TimelineTile(
            hasIndicator: true,
            startChild: Container(
              height: 20.h,
              width: 80.w,
              color: Colors.grey[300],
            ),
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isFirst: index == 0,
            isLast: index == 4,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.grey[300]!,
            ),
            beforeLineStyle: const LineStyle(
              color: Colors.grey,
              thickness: 2,
            ),
            afterLineStyle: const LineStyle(
              color: Colors.grey,
              thickness: 2,
            ),
            endChild: Container(
              margin: EdgeInsets.only(right: 10.w, bottom: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 16.h,
                    width: 120.w,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    height: 14.h,
                    width: 200.w,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: 14.h,
                        width: 100.w,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
