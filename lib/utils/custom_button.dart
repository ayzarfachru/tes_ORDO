import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_size.dart';
import 'custom_text.dart';

class CustomButton {
  static Widget customButton(
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
      padding: EdgeInsets.symmetric(vertical: vertical!, horizontal: horizontal!),
      decoration: BoxDecoration(
        color: containerColor, // Background color of the container
        borderRadius: BorderRadius.circular(radius ?? 0), // Rounded corners
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          CustomText.text(
              color: color,
              text: text,
              context: context,
              size: size,
              weight: weight,
              maxLines: 1),
        ],
      ),
    );
  }
}
