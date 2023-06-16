import 'package:flutter/material.dart';
import 'app_dimension.dart';

import 'app_colors.dart';

class AppFont {
  static String appFont = 'NunitoSans';
}

class StylesText {
  static final header1 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFont.appFont,
    color: AppColors.neutral1,
  );

  static final header2 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFont.appFont,
    color: AppColors.neutral1,
  );
  static final header3 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w800,
    fontFamily: AppFont.appFont,
    color: AppColors.neutral1,
  );

  static final body1 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFont.appFont,
    color: AppColors.neutral2,
  );
  static final body2 = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFont.appFont,
    fontWeight: FontWeight.w600,
    color: AppColors.neutral6,
  );
  static final body3 = TextStyle(
    fontSize: 14.sp,
    fontFamily: AppFont.appFont,
    fontWeight: FontWeight.w800,
    color: AppColors.red,
  );

  static final caption1 = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFont.appFont,
    fontWeight: FontWeight.w700,
    color: AppColors.neutral1,
  );
  static final caption2 = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFont.appFont,
    fontWeight: FontWeight.w600,
    color: AppColors.neutral1,
  );
  static final caption3 = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFont.appFont,
    fontWeight: FontWeight.w700,
    color: AppColors.grey,
  );
  static final errorField = TextStyle(
    fontSize: 13.sp,
    fontFamily: AppFont.appFont,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}
