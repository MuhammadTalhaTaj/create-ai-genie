import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppSpacer extends StatelessWidget {
  const AppSpacer._({Key? key, this.h, this.w}) : super(key: key);

  factory AppSpacer.p48() =>  AppSpacer._(
        h: 48,
        w: 48,
      );
  factory AppSpacer.p38() =>  AppSpacer._(
        h: 38,
        w: 38,
      );

  factory AppSpacer.p32() =>  AppSpacer._(
        h: 32,
        w: 32,
      );

  factory AppSpacer.p24() =>  AppSpacer._(
        h: 24,
        w: 24,
      );

  factory AppSpacer.p20() =>  AppSpacer._(
    h: 20,
    w: 20,
  );

  factory AppSpacer.p16() =>  AppSpacer._(
        h: 16,
        w: 16,
      );
  factory AppSpacer.p15() =>  AppSpacer._(
    h: 15,
    w: 15,
  );

  factory AppSpacer.p12() =>  AppSpacer._(
        h: 12,
        w: 12,
      );

  factory AppSpacer.p10() =>  AppSpacer._(
    h: 10,
    w: 10,
  );

  factory AppSpacer.p8() =>  AppSpacer._(
        h: 8,
        w: 8,
      );


  factory AppSpacer.p5() =>  AppSpacer._(
    h: 5,
    w: 5,
  );

  factory AppSpacer.p4() =>  AppSpacer._(
        h: 4,
        w: 4,
      );

  factory AppSpacer.p2() =>  AppSpacer._(
        h: 2,
        w: 2,
      );

  /// height of the sizedBox
  final double? h;

  /// width of the sizedBox
  final double? w;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: w?.w.w,
      height: h?.h.h,
    );
  }
}
