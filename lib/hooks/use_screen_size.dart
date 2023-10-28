import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ScreenSize {
  final double width;
  final double height;

  ScreenSize({
    required this.width,
    required this.height,
  });
}

ScreenSize useScreenSize(BuildContext context) {
  final size = MediaQuery.sizeOf(context);

  final screenSize = useMemoized(() {
    return ScreenSize(
      width: size.width,
      height: size.height,
    );
  }, [size.width, size.height]);

  return screenSize;
}
