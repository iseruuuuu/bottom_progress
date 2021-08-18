library bottom_progress;
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui show Shadow, FontFeature, TextLeadingDistribution, TextHeightBehavior;

class BottomProgress extends StatelessWidget {
  //style nullable
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final ui.TextHeightBehavior? textHeightBehavior;

  //textStyle
  //required
  final int pointCount;
  final int pageCount;
  final Color onColor;
  final Color offColor;
  final double? fontSize;

  //nullable
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
  final Paint? foreground;
  final Paint? background;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debugLabel;
  final List<ui.Shadow>? shadows;
  final List<ui.FontFeature>? fontFeatures;

  const BottomProgress({
    Key? key,
    //style
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,

    //textStyle
    //required
    required this.pointCount,
    required this.pageCount,
    required this.onColor,
    required this.offColor,

    //nullable
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
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
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
              overflow: overflow,
              fontFamily: fontFamily,
            ),
            textAlign: textAlign,
            softWrap: softWrap,
            overflow: overflow,
            maxLines: maxLines,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: textHeightBehavior,
          ),
      ],
    );
  }
}
