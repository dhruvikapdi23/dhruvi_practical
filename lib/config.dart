

import 'package:dhruvi_practical/common/app_array.dart';
import 'package:dhruvi_practical/common/session.dart';
import 'package:dhruvi_practical/common/theme/app_theme.dart';
import 'package:dhruvi_practical/utils/fonts.dart';
import 'package:provider/provider.dart';
import 'common/app_fonts.dart';
import 'config.dart';

export 'package:flutter/material.dart';
export '../common/theme/app_css.dart';
export 'package:dhruvi_practical/common/extension/text_style_extensions.dart';
export 'package:dhruvi_practical/common/extension/widget_extension.dart';


export 'package:dhruvi_practical/routes/screen_list.dart';
export '../common/extension/spacing.dart';
export 'package:dhruvi_practical/common/assets/index.dart';
export '../routes/index.dart';
export '../utils/extensions.dart';
export '../common/theme/theme_service.dart';
export '../utils/general_utils.dart';


Session session = Session();
AppFonts appFonts = AppFonts();

AppArray appArray = AppArray();

AppCss appCss = AppCss();


AppTheme appColor(context) {
  final themeServices = Provider.of<ThemeService>(context, listen: false);
  return themeServices.appTheme;
}

