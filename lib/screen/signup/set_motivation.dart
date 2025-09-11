import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/provider/user_prefs_provider.dart';
import 'package:ploop_fe/screen/signup/prefs_page_layout.dart';
import 'package:ploop_fe/screen/signup/widgets/option_button_set.dart';
import 'package:ploop_fe/theme.dart';

import 'set_area.dart';

class SetMotivationPage extends ConsumerStatefulWidget {
  const SetMotivationPage({super.key});

  @override
  ConsumerState<SetMotivationPage> createState() => _SetMotivationPageState();
}

class _SetMotivationPageState extends ConsumerState<SetMotivationPage> {
  final List<String> labelList = [
    "signup_motivation_local".tr(),
    "signup_motivation_stress".tr(),
    "signup_motivation_trends".tr(),
    "signup_motivation_selfDev".tr(),
    "signup_motivation_social".tr(),
    "signup_motivation_health".tr()
  ];

  String? selectedMotivation;

  @override
  Widget build(BuildContext context) {
    return PrefsPageLayout(
        question: 'signup_question.motivation'.tr(),
        title1: 'signup_title1.motivation'.tr(),
        widget1: OptionButtonSet(
          alignColumn: true,
          options: [...labelList],
          selectedOption: selectedMotivation,
          onTap: (label) {
            setState(() {
              selectedMotivation = label;
            });
          },
        ),
        onButtonPressed: () {
          if (selectedMotivation == null) {
            if (Platform.isIOS) {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text('signup_oops_title').tr(),
                  content: const Text('signup_oops_content.motivation').tr(),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'common_ok',
                        style:
                            TextStyle(color: Color.fromARGB(255, 0, 122, 255)),
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
                    'signup_oops_content.motivation',
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
              .setMotivation(selectedMotivation!); // 깔끔하게 name만 추출

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SetAreaPage()),
          );
        });
  }
}
