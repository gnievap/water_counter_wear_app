import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  CustomTheme({
    required this.blueTheme,
    required this.success,
    required this.info,
    required this.warning,
    required this.danger,
  });

  final Color? blueTheme;
  final Color? success;
  final Color? info;
  final Color? warning;
  final Color? danger;

  @override
  ThemeExtension<CustomTheme> copyWith({
    Color? blueTheme,
    Color? success,
    Color? info,
    Color? warning,
    Color? danger,
  }) {
    return CustomTheme(
      blueTheme: blueTheme ?? this.blueTheme,
      success: success ?? this.success,
      info: info ?? this.info,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) {
      return this;
    }
    return CustomTheme(
      blueTheme: Color.lerp(blueTheme, other.blueTheme, t),
      success: Color.lerp(success, other.success, t),
      info: Color.lerp(info, other.info, t),
      warning: Color.lerp(warning, other.warning, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }

  @override
  String toString() => 'CustomColors('
      'blueTheme: $blueTheme, success: $success, info: $info, warning: $info, danger: $danger'
      ')';

  // the dark theme
  static final standardTheme = CustomTheme(
    blueTheme: const Color.fromARGB(255, 62, 139, 236),
    success: const Color(0xff00bc8c),
    info: const Color(0xff17a2b8),
    warning: const Color(0xfff39c12),
    danger: const Color(0xffe74c3c),
  );
}
