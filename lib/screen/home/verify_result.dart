import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/theme.dart';

class VerifySuccess extends StatelessWidget {
  const VerifySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        color: GrayScale.black,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 24.h,
            children: [
              Image.asset('assets/icons/verify-success-3x.png', width: 82.w),
              Text(
                'home_verifySuccess_message',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: GrayScale.white),
              ).tr(),
            ],
          ),
        ),
      ),
    );
  }
}

class VerifyFailed extends StatelessWidget {
  const VerifyFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        color: GrayScale.black,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 24.h,
            children: [
              Image.asset('assets/icons/verify-failed-3x.png', width: 82.w),
              Text(
                'home_verifyFailed_message',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: GrayScale.white),
              ).tr(),
            ],
          ),
        ),
      ),
    );
  }
}
