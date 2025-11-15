import 'package:flutter/material.dart';

enum AppColors {
  black(Colors.black),
  ferrariRed(Color(0xffFF2B00)),
  vividYellow(Color(0xffFFE500)),
  heatWave(Color(0xffFF790C)),
  frenchPlum(Color(0xff7A025A)),
  brown(Color(0xff9D3103)),
  darkOrange(Color(0xffFF8E03)),
  rosePink(Color(0xffFF6CD8)),
  darkPastelGreen(Color(0xff1BC440)),
  darkCharcoal(Color(0xff323232)),
  chineseSilver(Color(0xffCDCDCD)),
  dimGray(Color(0xff696969)),
  limeGreen(Color(0xff1BC431)),
  laSalleGreen(Color(0xff007421)),
  deepGreen(Color(0xff006B1E)),
  kellyGreen(Color(0xff43B805)),

  white(Colors.white);

  final Color value;

  const AppColors(this.value);
}
