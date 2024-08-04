import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_ordo/home/home_screen.dart';

import 'custom_color.dart';
import 'custom_size.dart';

class CustomNavbar {
  static Widget customNavbar(
      {Color? color, BuildContext? context, int? page = 1}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, PageTransition(
                  type: PageTransitionType.theme,
                  alignment: Alignment.center,
                  duration: const Duration(milliseconds: 700),
                  child: const HomeScreen()));
            },
            child: SizedBox(
              height: double.parse(((CustomSize.sizeWidth(context!) * 0.16)
                          .toString()
                          .contains('.') ==
                      true)
                  ? (CustomSize.sizeWidth(context) * 0.16)
                      .toString()
                      .split('.')[0]
                  : (CustomSize.sizeWidth(context) * 0.16).toString()),
              width: double.parse(((CustomSize.sizeWidth(context) * 0.16)
                          .toString()
                          .contains('.') ==
                      true)
                  ? (CustomSize.sizeWidth(context) * 0.16)
                      .toString()
                      .split('.')[0]
                  : (CustomSize.sizeWidth(context) * 0.16).toString()),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      height: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                  .toString()
                                  .contains('.') ==
                              true)
                          ? (CustomSize.sizeWidth(context) * 0.06)
                              .toString()
                              .split('.')[0]
                          : (CustomSize.sizeWidth(context) * 0.06).toString()),
                      width: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                  .toString()
                                  .contains('.') ==
                              true)
                          ? (CustomSize.sizeWidth(context) * 0.06)
                              .toString()
                              .split('.')[0]
                          : (CustomSize.sizeWidth(context) * 0.06).toString()),
                      (page! == 1)
                          ? 'assets/navbar/home_filled.png'
                          : 'assets/navbar/home.png',
                      fit: BoxFit.contain,
                      color: (page == 1) ? color : CustomColor.secondary,
                    ),
                  ),
                  (page == 1)
                      ? Image.asset(
                          'assets/navbar/bar.png',
                          fit: BoxFit.contain,
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          SizedBox(
            height: double.parse(((CustomSize.sizeWidth(context!) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            width: double.parse(((CustomSize.sizeWidth(context) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    height: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    width: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    (page == 2)
                        ? 'assets/navbar/building_filled.png'
                        : 'assets/navbar/building.png',
                    fit: BoxFit.contain,
                    color: (page == 2) ? color : CustomColor.secondary,
                  ),
                ),
                (page == 2)
                    ? Image.asset(
                        'assets/navbar/bar.png',
                        fit: BoxFit.contain,
                      )
                    : const SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: double.parse(((CustomSize.sizeWidth(context!) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            width: double.parse(((CustomSize.sizeWidth(context) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    height: double.parse(((CustomSize.sizeWidth(context!) *
                                    0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    width: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    (page == 3)
                        ? 'assets/navbar/document_filled.png'
                        : 'assets/navbar/document.png',
                    fit: BoxFit.contain,
                    color: (page == 3) ? color : CustomColor.secondary,
                  ),
                ),
                (page == 3)
                    ? Image.asset(
                        'assets/navbar/bar.png',
                        fit: BoxFit.contain,
                      )
                    : const SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: double.parse(((CustomSize.sizeWidth(context!) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            width: double.parse(((CustomSize.sizeWidth(context) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    height: double.parse(((CustomSize.sizeWidth(context!) *
                                    0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    width: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    (page == 4)
                        ? 'assets/navbar/cart_filled.png'
                        : 'assets/navbar/cart.png',
                    fit: BoxFit.contain,
                    color: (page == 4) ? color : CustomColor.secondary,
                  ),
                ),
                (page == 4)
                    ? Image.asset(
                        'assets/navbar/bar.png',
                        fit: BoxFit.contain,
                      )
                    : const SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: double.parse(((CustomSize.sizeWidth(context!) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            width: double.parse(((CustomSize.sizeWidth(context) * 0.16)
                        .toString()
                        .contains('.') ==
                    true)
                ? (CustomSize.sizeWidth(context) * 0.16)
                    .toString()
                    .split('.')[0]
                : (CustomSize.sizeWidth(context) * 0.16).toString()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    height: double.parse(((CustomSize.sizeWidth(context!) *
                                    0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    width: double.parse(((CustomSize.sizeWidth(context) * 0.06)
                                .toString()
                                .contains('.') ==
                            true)
                        ? (CustomSize.sizeWidth(context) * 0.06)
                            .toString()
                            .split('.')[0]
                        : (CustomSize.sizeWidth(context) * 0.06).toString()),
                    (page == 5)
                        ? 'assets/navbar/user_filled.png'
                        : 'assets/navbar/user.png',
                    fit: BoxFit.contain,
                    color: (page == 5) ? color : CustomColor.secondary,
                  ),
                ),
                (page == 5)
                    ? Image.asset(
                        'assets/navbar/bar.png',
                        fit: BoxFit.contain,
                      )
                    : const SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
