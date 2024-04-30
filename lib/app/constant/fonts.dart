import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';

mixin CustomFontStyle {
  // static TextStyle normal = TextStyle(
  //   fontSize: 14.sp,
  //   fontWeight: FontWeight.bold,
  //   fontFamily: 'Rubik',
  // );
  static TextStyle normal = GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal));

  static TextStyle heading = GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold));

  static TextStyle button = GoogleFonts.roboto(
      textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold));
}