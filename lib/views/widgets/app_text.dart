import 'package:flutter/material.dart';
import 'package:translationtestmoniepoint/utils/app_colors.dart';
import 'package:translationtestmoniepoint/utils/app_text_styles.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final double? fontSize;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? lineHeight;
  final FontWeight? fontWeight;

  /// biggest text
  ///
  /// fontSize `32`
  /// fontWeight `700`
  AppText.heading1(this.text,
      {Key? key,
      this.multiText = true,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color,
      this.maxLines,
      this.textAlign,
      this.fontSize,
      this.letterSpacing,
      this.lineHeight,
      this.wordSpacing,
      this.fontWeight})
      : style =
            headingStyle1Bold.copyWith(color: color, fontWeight: fontWeight),
        super(key: key);

  /// h2 text
  ///
  // fontSize `29`
  // fontWeight `700`
  AppText.heading2(this.text,
      {Key? key,
      this.multiText = true,
      this.overflow = TextOverflow.ellipsis,
      this.color,
      this.maxLines,
      this.centered = false,
      this.textAlign,
      this.fontSize,
      this.letterSpacing,
      this.wordSpacing,
      this.lineHeight,
      this.fontWeight})
      : style =
            headingStyle2Bold.copyWith(color: color, fontWeight: fontWeight),
        super(key: key);

  /// h3 text
  ///
  /// fontSize `26`
  /// fontWeight `700`
  AppText.heading3(this.text,
      {Key? key,
      this.multiText = true,
      this.overflow = TextOverflow.ellipsis,
      this.color,
      this.maxLines,
      this.centered = false,
      this.textAlign,
      this.fontSize,
      this.wordSpacing,
      this.lineHeight,
      this.fontWeight,
      this.letterSpacing})
      : style =
            headingStyle3Bold.copyWith(color: color, fontWeight: fontWeight),
        super(key: key);

  /// h4text
  //
  // / fontSize `22`
  // / fontWeight `700`
  AppText.heading4(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.lineHeight,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
  })  : style = headingStyle4Bold.copyWith(
            color: color, fontSize: fontSize, fontWeight: fontWeight),
        super(key: key);

  /// h5 text
  ///
  /// fontSize `16`
  /// fontWeight `500`
  AppText.heading5(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
    this.lineHeight,
  })  : style =
            headingStyle5Bold.copyWith(color: color, fontWeight: fontWeight),
        super(key: key);

  /// h6 text
  ///
  /// fontSize `14`
  /// fontWeight `500`
  AppText.heading6(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
    this.lineHeight,
  })  : style =
            headingStyle6Bold.copyWith(color: color, fontWeight: fontWeight),
        super(key: key);

  /// normal body text
  ///
  /// fontSize `14`
  /// fontWeight `700`
  AppText.body(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    double? height,
    this.centered = false,
    this.lineHeight,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
  }) : style = bodyStyle.copyWith(
            color: color,
            height: height,
            fontSize: fontSize,
            fontWeight: fontWeight);

  /// semibold text
  ///
  /// fontSize `11`
  /// fontWeight `400`
  AppText.caption(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
    this.lineHeight,
  })  : style = captionStyle.copyWith(
          color: color,
          fontSize: fontSize,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 9999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,
      style: style.copyWith(
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          color: color ?? AppColors.kTextColor,
          height: lineHeight,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
