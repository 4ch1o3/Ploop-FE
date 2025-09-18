import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ploop_fe/model/bin_request.dart';
import 'package:ploop_fe/model/trashspot_request.dart';
import 'package:ploop_fe/provider/jwt_provider.dart';
import 'package:ploop_fe/service/bin_service.dart';
import 'package:ploop_fe/service/trashspot_service.dart';
import 'package:ploop_fe/theme.dart';

class SpecifyPhoto extends ConsumerStatefulWidget {
  final String imagePath;
  final double latitude;
  final double longitude;

  const SpecifyPhoto(
      {super.key,
      required this.imagePath,
      required this.latitude,
      required this.longitude});

  @override
  ConsumerState<SpecifyPhoto> createState() => _SpecifyPhotoState();
}

enum ImageType { bin, area }

class _SpecifyPhotoState extends ConsumerState<SpecifyPhoto> {
  ImageType? selectedType;

  Future sendImageByType(BuildContext context) async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // final String? jwt = prefs.getString('jwt');
    final jwt = ref.read(jwtNotifierProvider).jwt;
    final image = XFile(widget.imagePath);

    try {
      if (jwt == null) {
        debugPrint('jwt is null');
        return;
      }

      // case bin
      if (selectedType == ImageType.bin) {
        final bin = BinRequest(
          latitude: widget.latitude,
          longitude: widget.longitude,
        );

        debugPrint('trying to send bin');
        final response =
            await BinService.postBinPositionToServer(bin, jwt, image);

        if (response) {
          Navigator.pop(context, 'success');
        } else {
          Navigator.pop(context, 'fail');
        }
      }
      // case area
      else if (selectedType == ImageType.area) {
        final trashspot = TrashspotRequest(
            latitude: widget.latitude, longitude: widget.longitude);

        debugPrint('trying to send area');
        final response = await TrashspotService.postTrashspotPositionToServer(
            trashspot, jwt, image);

        if (response) {
          Navigator.pop(context, 'success');
        } else {
          Navigator.pop(context, 'fail');
        }
      } else {
        if (Platform.isIOS) {
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: const Text('map_specify_notSelected_title').tr(),
              content: const Text('map_specify_notSelected_content').tr(),
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
                'map_specify_notSelected_title',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.33.h,
                  letterSpacing: 0,
                ),
              ).tr(),
              content: Text(
                'map_specify_notSelected_content',
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
      }
    } catch (e) {
      Navigator.pop(context, 'fail');
    }
  }
  // case: area

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(16.w, 34.h, 16.w, 0),
        color: GrayScale.black,
        child: Column(
          spacing: 42.h,
          // photo
          children: [
            SizedBox(
              width: 402.w,
              height: 508.h,
              child: Image.file(
                File(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              spacing: 28.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'map_specify_title'.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: GrayScale.white),
                ),
                // buttons row
                Row(
                  spacing: 16.w,
                  children: [
                    Expanded(
                      child: TypeSelectButton(
                          onPressed: () {
                            setState(() {
                              selectedType = ImageType.bin;
                            });
                          },
                          label: 'map_mapFilterButton_bin'.tr(),
                          isSelected: selectedType == ImageType.bin),
                    ),
                    Expanded(
                      child: TypeSelectButton(
                        onPressed: () {
                          setState(() {
                            selectedType = ImageType.area;
                          });
                        },
                        label: 'map_mapFilterButton_litterArea'.tr(),
                        isSelected: selectedType == ImageType.area,
                      ),
                    ),
                  ],
                ),

                // upload button
                UploadButton(
                  onPressed: () =>
                      {debugPrint('pressed'), sendImageByType(context)},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UploadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const UploadButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 0,
        animationDuration: Duration.zero,
        splashFactory: NoSplash.splashFactory,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w)),
        backgroundColor: theme().color_600,
        padding: EdgeInsets.all(0.w),
      ),
      onPressed: onPressed,
      child: Container(
        width: 370.w,
        height: 48.h,
        alignment: Alignment.center,
        child: Text(
          'common_upload'.tr(),
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}

class TypeSelectButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool isSelected;
  const TypeSelectButton(
      {super.key,
      required this.onPressed,
      required this.label,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0.w),
        elevation: 0,
        splashFactory: NoSplash.splashFactory,
        animationDuration: Duration.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? theme().color_600 : GrayScale.gray_500,
          ),
          borderRadius: BorderRadius.circular(16.w),
        ),
      ),
      child: SizedBox(
        height: 48.h,
        child: Center(
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: isSelected ? theme().color_600 : GrayScale.gray_500,
                ),
          ),
        ),
      ),
    );
  }
}
