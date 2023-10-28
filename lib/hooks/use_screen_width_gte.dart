import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/constants/breakpoints.dart';

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

class _ScreenWidthGteHook extends Hook<ScreenWidthGte> {
  const _ScreenWidthGteHook();
  @override
  __ScreenWidthGteHookState createState() => __ScreenWidthGteHookState();
}

class __ScreenWidthGteHookState
    extends HookState<ScreenWidthGte, _ScreenWidthGteHook> {
  @override
  ScreenWidthGte build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;

    final xs = width >= Breakpoints.xs;
    final sm = width >= Breakpoints.sm;
    final md = width >= Breakpoints.md;
    final lg = width >= Breakpoints.lg;
    final xl = width >= Breakpoints.xl;
    final dxl = width >= Breakpoints.dxl;

    return ScreenWidthGte(
      xs: xs,
      sm: sm,
      md: md,
      lg: lg,
      xl: xl,
      dxl: dxl,
    );
  }
}

ScreenWidthGte useScreenWidthGte(BuildContext context) {
  return use(const _ScreenWidthGteHook());
}
