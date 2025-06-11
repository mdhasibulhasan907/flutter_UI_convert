import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ui_convert/consts/all_colors.dart';
import 'package:flutter_ui_convert/consts/all_sizes.dart';



class AllStyles {

  static final splash=TextStyle(
  color: AllColors.whiteColor,
  fontWeight: FontWeight.w700,
  fontSize: AllSizes.SplashSize,
  
  

  );

  static final heading=TextStyle(
    color: AllColors.blackColor.withOpacity(0.75),
    fontSize: AllSizes.headingSize,
    fontWeight: FontWeight.w600,
  );
  static final aboutText=TextStyle(
    color: AllColors.blackColor,
    fontSize: AllSizes.subHeadingSize,
    fontWeight: FontWeight.w600,
  );
  static final titleText=TextStyle(
   color: AllColors.blackColor.withOpacity(0.7),
   fontSize: AllSizes.titleSize,
   fontWeight: FontWeight.w600,
   
  );
  static final quantitytext=TextStyle(
   color: AllColors.blackColor.withOpacity(0.75),
   fontSize: AllSizes.quantitySize,
  );

}