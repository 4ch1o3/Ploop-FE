// GET record by Datetime to duration?
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/model/activity_filter.dart';
import 'package:ploop_fe/provider/activity_data_provider.dart';
import 'package:ploop_fe/theme.dart';

class TodayRecordCard extends ConsumerWidget {
  const TodayRecordCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime today = DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day, 0, 0, 0, 0);
    final DateTime todayEnd = DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day, 23, 59, 59, 999);

    return Container(
      width: 370.w,
      height: 80.h,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.w), color: theme().color_600),
      child: Row(
        children: [
          Expanded(
            child: Column(
              spacing: 4.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'home_todayRecordCard_garbage',
                  style: Theme.of(context).textTheme.labelSmall,
                ).tr(),
                Text(
                  ref
                      .watch(activityDataProvider(Range.W, today, todayEnd))
                      .when(
                          data: (activity) => '${activity.totalTrash}',
                          error: (err, stack) => '0',
                          loading: () => 'common_loading'.tr()),
                  // '$todayGarbageCount',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          const LineDividerWidget(),
          Expanded(
            child: Column(
              spacing: 4.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'common_distance',
                  style: Theme.of(context).textTheme.labelSmall,
                ).tr(),
                Text(
                  ref
                      .watch(activityDataProvider(Range.W, today, todayEnd))
                      .when(
                          data: (activity) =>
                              activity.totalMiles.toStringAsFixed(2),
                          error: (err, stack) => '0.00',
                          loading: () => 'common_loading'.tr()),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          const LineDividerWidget(),
          Expanded(
            child: Column(
              spacing: 4.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'common_hours',
                  style: Theme.of(context).textTheme.labelSmall,
                ).tr(),
                Text(
                  // _printDuration(todayRecordTime),
                  ref
                      .watch(activityDataProvider(Range.W, today, todayEnd))
                      .when(
                          data: (activity) =>
                              activity.totalHours.toStringAsFixed(2),
                          error: (err, stack) => '0.00',
                          loading: () => 'common_loading'.tr()),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LineDividerWidget extends StatelessWidget {
  const LineDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          // color: Colors.blue,
          width: 8.w,
          height: 50.h,
        ),
        Container(
          height: 50,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5.w,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
            ),
          ),
        ),
        SizedBox(
          // color: Colors.blue,
          width: 12.w,
          height: 50.h,
        ),
      ],
    );
  }
}
