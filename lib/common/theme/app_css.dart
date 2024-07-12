import 'package:google_fonts/google_fonts.dart';

import '../../config.dart';

part 'scale.dart';


FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.normal;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
FontWeight extraThickBold = FontWeight.bold;

//raleway font

//sfPro font
 TextStyle sfPro({double? fontsize, fontWeight}) =>
     TextStyle(fontSize: fontsize,fontWeight: fontWeight,fontFamily: "SF Pro");


class AppCss {

//Text Style sfPro extra bold
  TextStyle sfProExtraBold70 = sfPro( fontWeight: extraBold,fontsize:FontSizes.f70);
  TextStyle sfProExtraBold65 = sfPro( fontWeight:extraBold ,fontsize:FontSizes.f65);
  TextStyle sfProExtraBold60 = sfPro( fontWeight: extraBold,fontsize:FontSizes.f60);
  TextStyle sfProExtraBold40 = sfPro( fontWeight: extraBold,fontsize:FontSizes.f40);
  TextStyle sfProExtraBold20 = sfPro( fontWeight: extraBold,fontsize:FontSizes.f20);
  TextStyle sfProExtraBold25 = sfPro( fontWeight:extraBold ,fontsize:FontSizes.f25);
  TextStyle sfProExtraBold30 = sfPro( fontWeight: extraBold,fontsize:FontSizes.f30);

  //Text Style sfPro bold
  TextStyle sfProblack28 = sfPro(fontWeight: black,fontsize:FontSizes.f28);
  TextStyle sfProblack24 = sfPro(fontWeight: black,fontsize:FontSizes.f24);
  TextStyle sfProblack20 = sfPro(fontWeight: black,fontsize:FontSizes.f20);
  TextStyle sfProblack18 = sfPro(fontWeight: black,fontsize:FontSizes.f18);
  TextStyle sfProblack16 = sfPro(fontWeight: black,fontsize:FontSizes.f16);
  TextStyle sfProblack14 = sfPro(fontWeight: black,fontsize:FontSizes.f14);
  TextStyle sfProblack13 = sfPro(fontWeight: black,fontsize:FontSizes.f13);
  TextStyle sfProblack11 = sfPro(fontWeight: black,fontsize:FontSizes.f11);


  //Text Style sfPro bold
  TextStyle sfProExtraBold22 = sfPro(fontWeight: extraBold,fontsize:FontSizes.f22);
  TextStyle sfProExtraBold18 = sfPro(fontWeight: extraBold,fontsize:FontSizes.f18);
  TextStyle sfProExtraBold16 = sfPro(fontWeight: extraBold,fontsize:FontSizes.f16);
  TextStyle sfProExtraBold14 = sfPro(fontWeight: extraBold,fontsize:FontSizes.f14);
  TextStyle sfProExtraBold12 = sfPro(fontWeight: extraBold,fontsize:FontSizes.f12);

  //Text Style semi sfPro bold
  TextStyle sfProBold50 = sfPro(fontWeight: bold,fontsize:FontSizes.f50);
  TextStyle sfProBold38 = sfPro(fontWeight: bold,fontsize:FontSizes.f38);
  TextStyle sfProBold35 = sfPro(fontWeight: bold,fontsize:FontSizes.f35);
  TextStyle sfProBold24 = sfPro(fontWeight: bold,fontsize:FontSizes.f24);
  TextStyle sfProBold20 = sfPro(fontWeight: bold,fontsize:FontSizes.f20);
  TextStyle sfProBold18 = sfPro(fontWeight: bold,fontsize:FontSizes.f18);
  TextStyle sfProBold16 = sfPro(fontWeight: bold,fontsize:FontSizes.f16);
  TextStyle sfProBold15 = sfPro(fontWeight: bold,fontsize:FontSizes.f15);
  TextStyle sfProBold17 = sfPro(fontWeight: bold,fontsize:FontSizes.f17);
  TextStyle sfProBold14 = sfPro(fontWeight: bold,fontsize:FontSizes.f14);
  TextStyle sfProBold13 = sfPro(fontWeight: bold,fontsize:FontSizes.f13);
  TextStyle sfProBold12 = sfPro(fontWeight: bold,fontsize:FontSizes.f12);
  TextStyle sfProBold11 = sfPro(fontWeight: bold,fontsize:FontSizes.f11);
  TextStyle sfProBold10 = sfPro(fontWeight: bold,fontsize:FontSizes.f10);

  TextStyle sfProSemiBold24= sfPro(fontWeight: semiBold,fontsize:FontSizes.f24);
  TextStyle sfProSemiBold22= sfPro(fontWeight: semiBold,fontsize:FontSizes.f22);
  TextStyle sfProSemiBold20= sfPro(fontWeight: semiBold,fontsize:FontSizes.f20);
  TextStyle sfProSemiBold18= sfPro(fontWeight: semiBold,fontsize:FontSizes.f18);
  TextStyle sfProSemiBold16= sfPro(fontWeight: semiBold,fontsize:FontSizes.f16);
  TextStyle sfProSemiBold15= sfPro(fontWeight: semiBold,fontsize:FontSizes.f15);
  TextStyle sfProSemiBold13= sfPro(fontWeight: semiBold,fontsize:FontSizes.f13);
  TextStyle sfProSemiBold14= sfPro(fontWeight: semiBold,fontsize:FontSizes.f14);
  TextStyle sfProSemiBold12= sfPro(fontWeight: semiBold,fontsize:FontSizes.f12);
  TextStyle sfProSemiBold10= sfPro(fontWeight: semiBold,fontsize:FontSizes.f10);


  //Text Style sfPro medium
  TextStyle sfProMedium28 = sfPro(fontWeight: medium,fontsize:FontSizes.f28);
  TextStyle sfProMedium22 = sfPro(fontWeight: medium,fontsize:FontSizes.f22);
  TextStyle sfProMedium20 = sfPro(fontWeight: medium,fontsize:FontSizes.f20);
  TextStyle sfProMedium18 = sfPro(fontWeight: medium,fontsize:FontSizes.f18);
  TextStyle sfProMedium17 = sfPro(fontWeight: medium,fontsize:FontSizes.f17);
  TextStyle sfProMedium16 = sfPro(fontWeight: medium,fontsize:FontSizes.f16);
  TextStyle sfProMedium15 = sfPro(fontWeight: medium,fontsize:FontSizes.f15);
  TextStyle sfProMedium14 = sfPro(fontWeight: medium,fontsize:FontSizes.f14);
  TextStyle sfProMedium13 = sfPro(fontWeight: medium,fontsize:FontSizes.f13);
  TextStyle sfProMedium12 = sfPro(fontWeight: medium,fontsize:FontSizes.f12);
  TextStyle sfProMedium11 = sfPro(fontWeight: medium,fontsize:FontSizes.f11);
  TextStyle sfProMedium10 = sfPro(fontWeight: medium,fontsize:FontSizes.f10);
  TextStyle sfProMedium9= sfPro(fontWeight: medium,fontsize:FontSizes.f9);
  TextStyle sfProMedium8 = sfPro(fontWeight: medium,fontsize:FontSizes.f8);

  //Text Style sfPro regular
  TextStyle sfProRegular18 = sfPro(fontWeight: regular,fontsize:FontSizes.f18);
  TextStyle sfProRegular17 = sfPro(fontWeight: regular,fontsize:FontSizes.f17);
  TextStyle sfProRegular16 = sfPro(fontWeight: regular,fontsize:FontSizes.f16);
  TextStyle sfProRegular15 = sfPro(fontWeight: regular,fontsize:FontSizes.f15);
  TextStyle sfProRegular14 = sfPro(fontWeight: regular,fontsize:FontSizes.f14);
  TextStyle sfProRegular13 = sfPro(fontWeight: regular,fontsize:FontSizes.f13);
  TextStyle sfProRegular12 = sfPro(fontWeight: regular,fontsize:FontSizes.f12);
  TextStyle sfProRegular11 = sfPro(fontWeight: regular,fontsize:FontSizes.f11);


  TextStyle sfProLight16 = sfPro(fontWeight: light,fontsize:FontSizes.f16);
  TextStyle sfProLight14 = sfPro(fontWeight: light,fontsize:FontSizes.f14);

  TextStyle sfProLight13 = sfPro(fontWeight: light,fontsize:FontSizes.f13);
  TextStyle sfProLight12 = sfPro(fontWeight: light,fontsize:FontSizes.f12);
  TextStyle sfProLight11 = sfPro(fontWeight: light,fontsize:FontSizes.f11);

}
