import 'package:create_ai_genie/ui/auth/login.dart';
import 'package:create_ai_genie/ui/auth/sign_up_creator.dart';
import 'package:create_ai_genie/ui/auth/sign_up_enterprise.dart';
import 'package:create_ai_genie/ui/auth/sign_up_user.dart';
import 'package:create_ai_genie/ui/features/feature1.dart';
import 'package:create_ai_genie/ui/features/page_view.dart';
import 'package:create_ai_genie/ui/user_selection/user_selection.dart';
import 'package:create_ai_genie/ui/welcome_screen/welcome_screen.dart';
import 'package:create_ai_genie/utils/theme/themes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() =>
    // runApp(
// const MyApp());
runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>
        MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
    minTextAdapt: true,
    splitScreenMode: true,
    useInheritedMediaQuery: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
      return MaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.lightTheme,
        home: PageViewFlutter(),
      );

  });}
}
