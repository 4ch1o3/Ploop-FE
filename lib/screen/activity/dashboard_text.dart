import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ploop_fe/provider/activity_filter_provider.dart';
import 'package:ploop_fe/provider/activity_data_provider.dart';
import 'package:ploop_fe/theme.dart';

class DashboardTextWidget extends ConsumerWidget {
  // now, now + range
  final (DateTime, DateTime) dateRange;

  const DashboardTextWidget({super.key, required this.dateRange});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final range = ref.watch(activityFilterNotifierProvider).range;
    final startDate = ref.watch(activityFilterNotifierProvider).startDate;
    final endDate = ref.watch(activityFilterNotifierProvider).endDate;
    final dataProvider =
        ref.watch(activityDataProvider(range, startDate, endDate));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24.h,
      children: [
        // date range
        Text(
          '${DateFormat('d. MM. y').format(startDate)} - ${DateFormat('d. MM. y').format(endDate)}',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: GrayScale.gray_300,
              ),
        ),
        // collected trash amount
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.h,
          children: [
            Text(
              dataProvider.when(
                data: (activity) => '${activity.totalTrash}',
                loading: () => '0',
                error: (err, stack) => '0',
              ),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'activity_garbageCount',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: GrayScale.gray_300,
                  ),
            ).tr(),
          ],
        ),
        // records
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 32.w,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2.h,
              children: [
                Text(
                    dataProvider.when(
                      data: (activity) =>
                          activity.totalMiles.toStringAsFixed(2),
                      loading: () => '0.00',
                      error: (err, stack) => '0.00',
                    ),
                    style: Theme.of(context).textTheme.displaySmall),
                Text(
                  'common_km',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: GrayScale.gray_300,
                      ),
                ).tr(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2.h,
              children: [
                Text(
                    dataProvider.when(
                      data: (activity) =>
                          activity.totalHours.toStringAsFixed(2),
                      loading: () => '0.00',
                      error: (err, stack) => '0.00',
                    ),
                    style: Theme.of(context).textTheme.displaySmall),
                Text(
                  'common_hours',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: GrayScale.gray_300,
                      ),
                ).tr(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2.h,
              children: [
                Text(
                  dataProvider.when(
                    data: (activity) =>
                        '${activity.challengeCompleted}/${activity.challengeGoal}',
                    loading: () => '0/0',
                    error: (err, stack) => '0/0',
                  ),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  'activity_dashboardText_completed',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: GrayScale.gray_300,
                      ),
                ).tr(),
              ],
            ),
          ],
        )
      ],
    );
  }
}
