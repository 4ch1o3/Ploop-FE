import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/provider/user_prefs_provider.dart';
import 'package:ploop_fe/screen/signup/prefs_page_layout.dart';
import 'package:ploop_fe/theme.dart';
import 'set_personal_info.dart';
import 'widgets/custom_dropdown.dart';

class SetRegionPage extends ConsumerStatefulWidget {
  const SetRegionPage({
    super.key,
    required this.countries,
  });
  final List<String> countries;

  @override
  ConsumerState<SetRegionPage> createState() => _SetRegionPageState();
}

class _SetRegionPageState extends ConsumerState<SetRegionPage> {
  String country = '';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: PrefsPageLayout(
        firstPage: true,
        question: 'signup_question.country'.tr(),
        title1: 'signup_title1.country'.tr(),
        widget1: CustomDropDownMenu(
          selected: country,
          onSelected: ((val) => setState(() {
                country = val;
                debugPrint('selected $val');
              })),
          entryList: widget.countries,
        ),
        onButtonPressed: () {
          ref
              .watch(userPreferenceNotifierProvider.notifier)
              .setCountry(country);

          if (country == '') {
            if (Platform.isIOS) {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text('signup_oops_title').tr(),
                  content: const Text('signup_oops_content.country').tr(),
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
                    'signup_oops_content.country',
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
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SetPersonalInfoPage()),
            );
          }
        },
      ),
    );
  }
}
