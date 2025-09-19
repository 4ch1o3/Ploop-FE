import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ploop_fe/theme.dart';

class NicknameInputField extends StatelessWidget {
  const NicknameInputField({
    super.key,
    required this.nickname,
    required this.textController,
    required this.onChanged,
    this.maxNicknameLength = 20,
  });

  final TextEditingController textController;
  final String nickname;
  final ValueChanged<String> onChanged;
  final int maxNicknameLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      width: 370.w,
      height: 47.h,
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: CupertinoTextField(
              // controller: TextEditingController(text: nickname)
              controller: textController
                ..selection = TextSelection.collapsed(offset: nickname.length),
              placeholder: 'signup_placeholder.nickname'.tr(),
              placeholderStyle:
                  Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: GrayScale.gray_300,
                      ),
              decoration: null,
              inputFormatters: [
                LengthLimitingTextInputFormatter(maxNicknameLength),
              ],
              onTapOutside: ((event) {
                FocusScope.of(context).unfocus();
              }),
              onChanged: onChanged,
            ),
          ),
          Text(
            '${nickname.length}/$maxNicknameLength',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: GrayScale.gray_300,
                ),
          )
        ],
      ),
    );
  }
}
