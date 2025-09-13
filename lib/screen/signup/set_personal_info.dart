import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/provider/user_prefs_provider.dart';
import 'package:ploop_fe/screen/signup/prefs_page_layout.dart';
import 'package:ploop_fe/theme.dart';

import 'set_nickname.dart';
import 'widgets/custom_datepicker.dart';
import 'widgets/option_button_set.dart';

class SetPersonalInfoPage extends ConsumerStatefulWidget {
  const SetPersonalInfoPage({super.key});

  @override
  ConsumerState<SetPersonalInfoPage> createState() =>
      _SetPersonalInfoPageState();
}

enum Gender { male, female, unknown }

class _SetPersonalInfoPageState extends ConsumerState<SetPersonalInfoPage> {
  // prevent conflict with maximum selectable date
  DateTime? birthDate;
  String gender = '';
  int age = -1;

  final DateTime _today = DateTime.now();

  final List<(String, Gender)> genderOptions = [
    ('signup_personalInfo_male'.tr(), Gender.male),
    ('signup_personalInfo_female'.tr(), Gender.female),
    ('signup_personalInfo_other'.tr(), Gender.unknown)
  ];
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return PrefsPageLayout(
      question: 'signup_question.personalInfo'.tr(),
      title1: 'signup_title1.personalInfo'.tr(),
      widget1: UserBirthDatePicker(
        date: birthDate,
        onDateChanged: (DateTime value) {
          setState(() {
            birthDate = value;
            // debugPrint('selected birthdate: $birthDate');

            // calculate age
            age = DateTime.now().year - birthDate!.year;
            if (_today.month < birthDate!.month ||
                (_today.month == birthDate!.month &&
                    _today.day < birthDate!.day)) {
              age--;
            }

            // debugPrint('calculated age: $age');
          });
        },
      ),
      title2: 'signup_title2.personalInfo'.tr(),
      widget2: OptionButtonSet(
        options: genderOptions.map((e) => e.$1).toList(),
        isMultiSelect: false,
        // maxMultiSelect: 1,
        selectedOption: gender,
        onTap: (label) {
          setState(() {
            gender = label;
            // debugPrint("selected gender: $gender");
          });
        },
      ),
      onButtonPressed: () {
        String genderPayload = genderOptions
            .firstWhere((e) => e.$1 == gender)
            .$2
            .name
            .toUpperCase();
        ref.read(userPreferenceNotifierProvider.notifier).setAge(age);
        ref
            .read(userPreferenceNotifierProvider.notifier)
            .setGender(genderPayload);

        if (age == -1 || gender == '') {
          if (Platform.isIOS) {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Text('signup_oops_title').tr(),
                content: Text(age == -1
                        ? 'signup_oops_content.personalInfo.birthday'
                        : 'signup_oops_content.personalInfo.gender')
                    .tr(),
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
                  age == -1
                      ? 'signup_oops_content.personalInfo.birthday'
                      : 'signup_oops_content.personalInfo.gender',
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
                    style:
                        TextButton.styleFrom(padding: const EdgeInsets.all(0)),
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
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SetNicknamePage()),
          );
        }
      },
    );
  }
}
