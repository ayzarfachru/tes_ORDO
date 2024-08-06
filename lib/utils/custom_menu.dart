import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'custom_color.dart';
import 'custom_size.dart';
import 'custom_text.dart';

class CustomMenu {
  static Widget customMenu(
      {String? text,
      Color? color,
      BuildContext? context,
      double? value,
      String? image}) {
    return Stack(
      children: [
        shadowComponent(context!, value!),
        backgroundImageComponent(context, value, image),
        textAndProgressComponent(context, value, text),
        layerOpacityComponent(context, value),
      ],
    );
  }

  static Container shadowComponent(BuildContext? context, double? value) {
    return Container(
        clipBehavior: Clip.hardEdge,
        width: CustomSize.sizeWidth(context!) / 2.36,
        height: CustomSize.sizeWidth(context) / 2.36,
        decoration: BoxDecoration(
          color: ((value! * 100).toInt() == 100)
              ? CustomColor.primary
              : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: CustomColor.secondaryLight,
              blurRadius: 8,
              spreadRadius: 0.2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
      );
  }

  static Container layerOpacityComponent(BuildContext context, double value) {
    return Container(
        width: CustomSize.sizeWidth(context!) / 2.36,
        height: CustomSize.sizeWidth(context) / 2.36,
        decoration: BoxDecoration(
          color: ((value * 100).toInt() == 0)
              ? Colors.white60
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
      );
  }

  static Container textAndProgressComponent(BuildContext context, double value, String? text) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        width: CustomSize.sizeWidth(context) / 2.36,
        height: CustomSize.sizeWidth(context) / 2.36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.text(
                    color: ((value * 100).toInt() == 100)
                        ? CustomColor.white
                        : CustomColor.primary,
                    text: 'Tahap',
                    context: context,
                    size: 0.033,
                    weight: FontWeight.w300,
                    maxLines: 1),
                CustomText.text(
                    color: ((value * 100).toInt() == 100)
                        ? CustomColor.white
                        : CustomColor.primary,
                    text: text,
                    context: context,
                    size: 0.038,
                    weight: FontWeight.w400,
                    maxLines: 1),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: ((value! * 100).toInt() == 100)
                    ? CustomColor.primary
                    : Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 8,
                    spreadRadius: 0.2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: CircularPercentIndicator(
                radius: 20.0,
                lineWidth: 3,
                animation: true,
                backgroundColor: CustomColor.secondary,
                percent: value,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor:
                    (value != 1) ? CustomColor.primary : CustomColor.red,
                center: RichText(
                  text: TextSpan(
                    children: [
                      CustomText.textSpan(
                        color: ((value * 100).toInt() == 100)
                            ? CustomColor.white
                            : CustomColor.primary,
                        text: '${(value * 100).toInt()}',
                        context: context,
                        size: 0.033,
                        weight: FontWeight.w600,
                      ),
                      CustomText.textSpan(
                        color: ((value * 100).toInt() == 100)
                            ? CustomColor.white
                            : CustomColor.primary,
                        text: '%',
                        context: context,
                        size: 0.02,
                        weight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

  static Stack backgroundImageComponent(BuildContext context, double value, String? image) {
    return Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: CustomSize.sizeWidth(context!) / 2.36,
            height: CustomSize.sizeWidth(context) / 2.36,
            decoration: BoxDecoration(
              color: ((value! * 100).toInt() == 100)
                  ? CustomColor.primary
                  : Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          ((value * 100).toInt() == 100)
              ? Positioned(
                  left: 55.0,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: CustomSize.sizeWidth(context) / 2.5,
                        height: CustomSize.sizeWidth(context) / 2.5,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ((value * 100).toInt() == 100)
                                ? CustomColor.primaryDark
                                : CustomColor.secondaryLight2),
                      ),
                      Positioned(
                        bottom: 10.0,
                        child: Container(
                          width: CustomSize.sizeWidth(context) / 3.26,
                          height: CustomSize.sizeWidth(context) / 3.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            image!,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Positioned(
                  // left: 20.0,
                  top: 55.0,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: CustomSize.sizeWidth(context) / 2.5,
                        height: CustomSize.sizeWidth(context) / 2.5,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ((value * 100).toInt() == 100)
                                ? CustomColor.primaryDark
                                : CustomColor.secondaryLight2),
                      ),
                      Positioned(
                        left: 50.0,
                        bottom: 55.0,
                        child: Container(
                          alignment: Alignment.bottomRight,
                          width: CustomSize.sizeWidth(context) / 3.26,
                          height: CustomSize.sizeWidth(context) / 3.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            image!,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      );
  }
}
