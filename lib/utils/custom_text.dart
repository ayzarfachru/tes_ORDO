import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_size.dart';

class CustomText {
  static Widget text(
      {String? text,
      double? size,
      double? minSize,
      int? maxLines,
      FontWeight? weight,
      Color? color,
      BuildContext? context}) {
    return AutoSizeText(
      text!,
      minFontSize: double.parse(((CustomSize.sizeWidth(context!) * size)
          .toString()
          .contains('.') ==
          true)
          ? (CustomSize.sizeWidth(context) * size).toString().split('.')[0]
          : (CustomSize.sizeWidth(context) * size).toString()),
      style: GoogleFonts.outfit(
          textStyle: TextStyle(
        fontWeight: weight,
        color: color ??= Colors.black,
        height: 1.2,
      )),
      maxLines: maxLines ?? 1,
    );
  }

  static Widget customText(
      {String? text,
        double? size,
        double? minSize,
        int? maxLines,
        FontWeight? weight,
        Color? color,
        BuildContext? context,
        double? width,
        Color? containerColor,
        String? iconImage = '',
        double? radius,
        double? vertical,
        double? horizontal}) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: containerColor, // Background color of the container
        borderRadius: BorderRadius.circular(radius ?? 0), // Rounded corners
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          (iconImage != '')
              ? Image.asset(
                height: double.parse(((CustomSize.sizeWidth(context!) * size)
                    .toString()
                    .contains('.') ==
                    true)
                    ? (CustomSize.sizeWidth(context) * size)
                    .toString()
                    .split('.')[0]
                    : (CustomSize.sizeWidth(context) * size).toString()),
                width: double.parse(((CustomSize.sizeWidth(context!) * size)
                    .toString()
                    .contains('.') ==
                    true)
                    ? (CustomSize.sizeWidth(context) * size)
                    .toString()
                    .split('.')[0]
                    : (CustomSize.sizeWidth(context) * size).toString()),
                iconImage!,
                fit: BoxFit.contain,
                color: color,
              )
              : const SizedBox(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: CustomText.text(
                  color: color,
                  text: text,
                  context: context,
                  size: size,
                  weight: weight,
                  maxLines: 2),
            ),
          ),
        ],
      ),
    );
  }

  static TextSpan textSpan(
      {String? text,
        double? size,
        double? minSize,
        FontWeight? weight,
        Color? color,
        BuildContext? context}) {
    return TextSpan(
      text: text!,
      style: GoogleFonts.outfit(
          textStyle: TextStyle(
            fontSize: double.parse(((CustomSize.sizeWidth(context!) * size)
                .toString()
                .contains('.') ==
                true)
                ? (CustomSize.sizeWidth(context) * size).toString().split('.')[0]
                : (CustomSize.sizeWidth(context) * size).toString()),
            fontWeight: weight,
            color: color ??= Colors.black,
            height: 1.2,
          )),
    );
  }
}
