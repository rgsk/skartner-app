import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/constants/breakpoints.dart';
import 'package:skartner_app/hooks/general/use_screen_size.dart';

class ScreenWidthGte {
  final bool xs;
  final bool sm;
  final bool md;
  final bool lg;
  final bool xl;
  final bool dxl;

  ScreenWidthGte({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.dxl,
  });
}

ScreenWidthGte useScreenWidthGte(BuildContext context) {
  final screenSize = useScreenSize(context);
  final width = screenSize.width;
  final screenWidthGte = useMemoized(() {
    return ScreenWidthGte(
      xs: width >= Breakpoints.xs,
      sm: width >= Breakpoints.sm,
      md: width >= Breakpoints.md,
      lg: width >= Breakpoints.lg,
      xl: width >= Breakpoints.xl,
      dxl: width >= Breakpoints.dxl,
    );
  }, [width]);

  return screenWidthGte;
}
