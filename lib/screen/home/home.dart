import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/provider/jwt_provider.dart';
import 'package:ploop_fe/provider/mission_provider.dart';
import 'package:ploop_fe/screen/home/challenge.dart';
import 'package:ploop_fe/theme.dart';
import 'ploop_appbar.dart';
import 'today_record_card.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authToken = ref.read(jwtNotifierProvider);
    final jwt = authToken.jwt;
    if (jwt == null) {
      Platform.isIOS
          ? showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Text('common_somethingWentWrong').tr(),
                content: const Text('home_signInError').tr(),
                actions: [
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'common_ok',
                      style: TextStyle(color: Color.fromARGB(255, 0, 122, 255)),
                    ).tr(),
                  ),
                ],
              ),
            )
          : showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  'common_somethingWentWrong',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.33.h,
                    letterSpacing: 0,
                  ),
                ).tr(),
                content: Text(
                  'home_signInError',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.43.h,
                    letterSpacing: 0.25,
                  ),
                ).tr(),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'common_ok',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.sp,
                          height: 1.43.h,
                          color: GrayScale.black),
                    ).tr(),
                  ),
                ],
              ),
            );
    }

    return PopScope(
      canPop: false,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            // Page Content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.h,
              children: [
                const PloopAppBar(),
                // Page body
                Container(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    spacing: 8.h,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    // Weekly Challenge
                    children: [
                      Text(
                        'home_weeklyChallenge',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ).tr(),
                      const ChallengeProgressCard(),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 8.w,
                          children: ref.watch(missionDataProvider).when(
                                data: (mission) => mission.myMissions
                                    .map((e) => ChallengeCard(
                                          title: e.name,
                                          isVerified: e.verified,
                                          id: e.userMissionId,
                                        ))
                                    .toList(),
                                loading: () => const [],
                                error: (err, stack) => [],
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),

                      // Today's Record
                      Text(
                        "home_todaysRecord",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ).tr(),
                      const TodayRecordCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
