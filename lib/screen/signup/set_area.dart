import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/provider/user_prefs_provider.dart';
import 'package:ploop_fe/screen/signup/prefs_page_layout.dart';
import 'package:ploop_fe/screen/signup/finish_prefs_setup.dart';
import 'package:ploop_fe/screen/signup/widgets/option_button_set.dart';
import 'package:ploop_fe/theme.dart';

class SetAreaPage extends ConsumerStatefulWidget {
  const SetAreaPage({super.key});

  @override
  ConsumerState<SetAreaPage> createState() => _SetAreaPageState();
}

class _SetAreaPageState extends ConsumerState<SetAreaPage> {
  final List<String> labelList = [
    "signup_area_nature".tr(),
    "signup_area_urban".tr(),
    "signup_area_historic".tr(),
    "signup_area_coastal".tr(),
    "signup_area_university".tr(),
    "signup_area_hiddenGems".tr()
  ];

  Set<String> preferredArea = {};

  @override
  Widget build(BuildContext context) {
    return PrefsPageLayout(
      question: 'signup_question.area'.tr(),
      title1: 'signup_title1.area'.tr(),
      widget1: OptionButtonSet(
        alignColumn: true,
        options: [...labelList],
        isMultiSelect: true,
        maxMultiSelect: 3,
        selectedOptions: preferredArea,
        onTap: (label) {
          setState(() {
            if (preferredArea.contains(label)) {
              preferredArea.remove(label);
              // } else if (selectedOptions.length < 3) {
              // selectedOptions.add(label);
            } else {
              preferredArea.add(label);
            }
          });
        },
      ),
      onButtonPressed: () {
        if (preferredArea.isEmpty) {
          if (Platform.isIOS) {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Text('signup_oops_title').tr(),
                content: const Text('signup_oops_content.area').tr(),
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
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  'signup_oops_title',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.33.h,
                    letterSpacing: 0,
                  ),
                ).tr(),
                content: Text(
                  'signup_oops_content.area',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.43.h,
                    letterSpacing: 0.25,
                  ),
                ),
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
          return;
        } else if (preferredArea.length > 3) {
          if (Platform.isIOS) {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Text('signup_oops_title').tr(),
                content: const Text('signup_oops_content.areaMax').tr(),
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
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  'signup_oops_title',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.33.h,
                    letterSpacing: 0,
                  ),
                ).tr(),
                content: Text(
                  'signup_oops_content.areaMax',
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

          return;
        }

        ref
            .read(userPreferenceNotifierProvider.notifier)
            .setPreferredAreas(preferredArea.toList());

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FinishSetup()),
        );
      },
    );
  }
}
