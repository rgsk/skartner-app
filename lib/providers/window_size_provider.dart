// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

final windowSizeProvider =
    StateNotifierProvider<WindowSizeNotifier, WindowSize>(
        (ref) => WindowSizeNotifier());

class WindowSizeNotifier extends StateNotifier<WindowSize> {
  WindowSizeNotifier() : super(WindowSize(width: 0, height: 0));

  void addHeight() {
    state = state.copyWith(height: state.height + 1);
  }
}

class WindowSize {
  int width;
  int height;
  WindowSize({
    required this.width,
    required this.height,
  });

  WindowSize copyWith({
    int? width,
    int? height,
  }) {
    return WindowSize(
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
