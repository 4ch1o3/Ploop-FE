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

import 'set_motivation.dart';

class SetDifficultyPage extends ConsumerStatefulWidget {
  const SetDifficultyPage({super.key});

  @override
  ConsumerState<SetDifficultyPage> createState() => _SetDifficultyPageState();
}

enum Difficulty {
  beginner,
  intermediate,
  advanced,
}

class _SetDifficultyPageState extends ConsumerState<SetDifficultyPage> {
  final List<(String, Difficulty)> difficultyOptions = [
    ("signup_difficulty_beginner".tr(), Difficulty.beginner),
    ("signup_difficulty_intermediate".tr(), Difficulty.intermediate),
    ("signup_difficulty_advanced".tr(), Difficulty.advanced),
  ];

  String selectedLabel = '';
  Difficulty? selectedDifficulty;

  @override
  Widget build(BuildContext context) {
    return PrefsPageLayout(
        question: 'signup_question.difficulty'.tr(),
        title1: 'signup_title1.difficulty'.tr(),
        widget1: OptionButtonSet(
          alignColumn: true,
          options: difficultyOptions.map((e) => e.$1).toList(),
          selectedOption: selectedDifficulty == null
              ? ''
              : difficultyOptions
                  .firstWhere((e) => e.$2 == selectedDifficulty)
                  .$1,
          onTap: (label) {
            setState(() {
              selectedDifficulty =
                  difficultyOptions.firstWhere((e) => e.$1 == label).$2;
            });
          },
        ),
        onButtonPressed: () {
          if (selectedDifficulty == null) {
            if (Platform.isIOS) {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text('signup_oops_title').tr(),
                  content: const Text('signup_oops_content.difficulty').tr(),
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
                    'signup_oops_content.difficulty',
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
              .setDifficulty(selectedDifficulty!.name);

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SetMotivationPage()),
          );
        });
  }
}
