import 'package:create_ai_genie/utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TInputTheme{
  TInputTheme._();

  static InputDecorationTheme lightInputDecoration=InputDecorationTheme(

      filled: true,
      fillColor: Colors.white,

      hintStyle: TextStyle(color:Color(0xffBABABA
      ) ),


      contentPadding:  EdgeInsets.only(

          left: 14.0, bottom: 8.h, top: 8.0.h,right: 8),
      focusedBorder: OutlineInputBorder(

        borderSide: new BorderSide(color: Color(0xffCBD2E0)),
        borderRadius: new BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(

        borderSide: new BorderSide(color: Color(0xffCBD2E0)),
        borderRadius: new BorderRadius.circular(8),
      ),

  );

}

