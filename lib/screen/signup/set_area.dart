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

enum PreferredAreas {
  nature,
  alleys,
  culture,
  coast,
  campus,
  hidden,
}

class SetAreaPage extends ConsumerStatefulWidget {
  const SetAreaPage({super.key});

  @override
  ConsumerState<SetAreaPage> createState() => _SetAreaPageState();
}

class _SetAreaPageState extends ConsumerState<SetAreaPage> {
  final List<(String, PreferredAreas)> areaOptions = [
    ("signup_area_nature".tr(), PreferredAreas.nature),
    ("signup_area_alleys".tr(), PreferredAreas.alleys),
    ("signup_area_culture".tr(), PreferredAreas.culture),
    ("signup_area_coast".tr(), PreferredAreas.coast),
    ("signup_area_campus".tr(), PreferredAreas.campus),
    ("signup_area_hidden".tr(), PreferredAreas.hidden)
  ];

  Set<String> preferredArea = {};

  @override
  Widget build(BuildContext context) {
    return PrefsPageLayout(
      question: 'signup_question.area'.tr(),
      title1: 'signup_title1.area'.tr(),
      widget1: OptionButtonSet(
        alignColumn: true,
        options: areaOptions.map((e) => e.$1).toList(),
        isMultiSelect: true,
        maxMultiSelect: 3,
        selectedOptions: preferredArea,
        onTap: (label) {
          setState(() {
            if (preferredArea.contains(label)) {
              preferredArea.remove(label);
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

        List<String> areaPayload = [];
        for (var selected in preferredArea) {
          areaPayload.add(areaOptions
              .firstWhere((e) => e.$1 == selected)
              .$2
              .name
              .toUpperCase());
        }
        ref
            .read(userPreferenceNotifierProvider.notifier)
            .setPreferredAreas(areaPayload);
        for (var area in areaPayload) {
          debugPrint("area: $area");
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FinishSetup()),
        );
      },
    );
  }
}
