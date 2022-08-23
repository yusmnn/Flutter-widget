import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTypography {
  static final headingLarge = GoogleFonts.poppins()
      .copyWith(fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: 1);
  static final textMedium = GoogleFonts.poppins()
      .copyWith(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.5);
  static final textSmall = GoogleFonts.poppins()
      .copyWith(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.5);
  static final button = GoogleFonts.poppins()
      .copyWith(fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 0.5);
}
