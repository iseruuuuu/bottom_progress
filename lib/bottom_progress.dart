library bottom_progress;
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui show Shadow, FontFeature, TextLeadingDistribution;

class BottomProgress extends StatelessWidget {
  //必須項目　required code
  final int pointCount;
  final int pageCount;
  final Color onColor;
  final Color offColor;
  final double? fontSize;

  final bool inherit;
  final Color? backgroundColor;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final ui.TextLeadingDistribution? leadingDistribution;
  final Locale? locale;
  final Paint? foreground;
  final Paint? background;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debugLabel;
  final List<ui.Shadow>? shadows;
  final List<ui.FontFeature>? fontFeatures;
  final TextOverflow? overflow;

  const BottomProgress({
    Key? key,
    required this.pointCount,
    required this.pageCount,
    required this.onColor,
    required this.offColor,
    this.fontSize,

    this.inherit = true,
    this.backgroundColor,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    List<String>? fontFamilyFallback,
    String? package,
    this.overflow,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var index = 1; index < pageCount; index++)
          Text(
            '•',
            style: TextStyle(
              fontSize: fontSize,
              color: pointCount == index
                  ? onColor
                  : offColor,
              inherit: inherit,
              backgroundColor: backgroundColor,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              letterSpacing: letterSpacing,
              wordSpacing: wordSpacing,
              textBaseline: textBaseline,
              height: height,
              leadingDistribution: leadingDistribution,
              locale: locale,
              foreground: foreground,
              background: background,
              shadows: shadows,
              fontFeatures: fontFeatures,
              decoration: decoration,
              decorationColor: decorationColor,
              decorationStyle: decorationStyle,
              decorationThickness: decorationThickness,
              debugLabel: debugLabel,
              //わからん？？
              // fontFamilyFallback: fontFamilyFallback,
              // package: package,
              overflow: overflow,
              fontFamily: fontFamily,
            ),
          ),
      ],
    );
  }
}