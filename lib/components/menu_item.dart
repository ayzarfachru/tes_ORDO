import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';
import 'package:badges/badges.dart' as badges;

// Menu Pemesanan
class MenuPemesananComponent extends StatefulWidget {
  const MenuPemesananComponent({Key? key}) : super(key: key);

  @override
  _MenuPemesananComponentState createState() => _MenuPemesananComponentState();
}

class _MenuPemesananComponentState extends State<MenuPemesananComponent> {
  double value = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 16,
        ),
        Container(
          width: CustomSize.sizeWidth(context) / 5.26,
          height: 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: CustomColor.secondaryLight3,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
            width: CustomSize.sizeWidth(context) / 1,
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                CustomText.text(
                    color: CustomColor.primary,
                    text: 'Tahap Pemesanan',
                    context: context,
                    size: 0.052,
                    weight: FontWeight.w600,
                    maxLines: 2),
                CustomText.text(
                    color: CustomColor.secondary,
                    text: 'Daftar menu tahap pemesanan',
                    context: context,
                    size: 0.033,
                    weight: FontWeight.w400,
                    maxLines: 2),
              ],
            )),
        const SizedBox(
          height: 16,
        ),
        Divider(
          color: CustomColor.secondaryLight3,
          height: 8,
          thickness: 2,
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/money_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Booking',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Fee',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/wallet_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Pesanan',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Belum Bayar',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/note_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Riwayat',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Pemesanan',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}


// Menu Administrasi
class MenuAdministrasiComponent extends StatefulWidget {
  const MenuAdministrasiComponent({Key? key}) : super(key: key);

  @override
  _MenuAdministrasiComponentState createState() => _MenuAdministrasiComponentState();
}

class _MenuAdministrasiComponentState extends State<MenuAdministrasiComponent> {
  double value = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 16,
        ),
        Container(
          width: CustomSize.sizeWidth(context) / 5.26,
          height: 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: CustomColor.secondaryLight3,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
            width: CustomSize.sizeWidth(context) / 1,
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                CustomText.text(
                    color: CustomColor.primary,
                    text: 'Tahap Administrasi',
                    context: context,
                    size: 0.052,
                    weight: FontWeight.w600,
                    maxLines: 2),
                CustomText.text(
                    color: CustomColor.secondary,
                    text: 'Daftar menu tahap administrasi',
                    context: context,
                    size: 0.033,
                    weight: FontWeight.w400,
                    maxLines: 2),
              ],
            )),
        const SizedBox(
          height: 16,
        ),
        Divider(
          color: CustomColor.secondaryLight3,
          height: 8,
          thickness: 2,
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 12, bottom: 4),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          badgeContent: Text(
                            '!',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/ruler_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'SPS',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/edit_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'SPR',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/document_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'PPJB',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 4, bottom: 12),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/note2_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Daftar',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Dokumen',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/archive_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'SP3K',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/receipt_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Bayar',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Angsuran',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}


// Menu Pembangunan
class MenuPembangunanComponent extends StatefulWidget {
  const MenuPembangunanComponent({Key? key}) : super(key: key);

  @override
  _MenuPembangunanComponentState createState() => _MenuPembangunanComponentState();
}

class _MenuPembangunanComponentState extends State<MenuPembangunanComponent> {
  double value = 1.0;
  double value2 = 0.2;
  double value3 = 0.3;
  double value4 = 0.4;
  double value5 = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 16,
        ),
        Container(
          width: CustomSize.sizeWidth(context) / 5.26,
          height: 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: CustomColor.secondaryLight3,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
            width: CustomSize.sizeWidth(context) / 1,
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                CustomText.text(
                    color: CustomColor.primary,
                    text: 'Tahap Pembangunan',
                    context: context,
                    size: 0.052,
                    weight: FontWeight.w600,
                    maxLines: 2),
                CustomText.text(
                    color: CustomColor.secondary,
                    text: 'Daftar menu tahap pembangunan rumah',
                    context: context,
                    size: 0.033,
                    weight: FontWeight.w400,
                    maxLines: 2),
              ],
            )),
        const SizedBox(
          height: 16,
        ),
        Divider(
          color: CustomColor.secondaryLight3,
          height: 8,
          thickness: 2,
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 12, bottom: 4),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColor.primary,
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
                            backgroundColor: CustomColor.white,
                            percent: value,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: CustomColor.red,
                            center: RichText(
                              text: TextSpan(
                                children: [
                                  CustomText.textSpan(
                                    color: CustomColor.white,
                                    text: '${(value * 100).toInt()}',
                                    context: context,
                                    size: 0.033,
                                    weight: FontWeight.w600,
                                  ),
                                  CustomText.textSpan(
                                    color: CustomColor.white,
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
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Persiapan',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColor.primary,
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
                            backgroundColor: CustomColor.white,
                            percent: value2,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: CustomColor.red,
                            center: RichText(
                              text: TextSpan(
                                children: [
                                  CustomText.textSpan(
                                    color: CustomColor.white,
                                    text: '${(value2 * 100).toInt()}',
                                    context: context,
                                    size: 0.033,
                                    weight: FontWeight.w600,
                                  ),
                                  CustomText.textSpan(
                                    color: CustomColor.white,
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
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Pondasi & Struktur',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColor.primary,
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
                            backgroundColor: CustomColor.white,
                            percent: value3,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: CustomColor.red,
                            center: RichText(
                              text: TextSpan(
                                children: [
                                  CustomText.textSpan(
                                    color: CustomColor.white,
                                    text: '${(value3 * 100).toInt()}',
                                    context: context,
                                    size: 0.033,
                                    weight: FontWeight.w600,
                                  ),
                                  CustomText.textSpan(
                                    color: CustomColor.white,
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
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Rumah Unfinished',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 4, bottom: 12),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColor.primary,
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
                            backgroundColor: CustomColor.white,
                            percent: value4,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: CustomColor.red,
                            center: RichText(
                              text: TextSpan(
                                children: [
                                  CustomText.textSpan(
                                    color: CustomColor.white,
                                    text: '${(value4 * 100).toInt()}',
                                    context: context,
                                    size: 0.033,
                                    weight: FontWeight.w600,
                                  ),
                                  CustomText.textSpan(
                                    color: CustomColor.white,
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
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Finishing & Interior',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColor.primary,
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
                            backgroundColor: CustomColor.white,
                            percent: value5,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: CustomColor.red,
                            center: RichText(
                              text: TextSpan(
                                children: [
                                  CustomText.textSpan(
                                    color: CustomColor.white,
                                    text: '${(value5 * 100).toInt()}',
                                    context: context,
                                    size: 0.033,
                                    weight: FontWeight.w600,
                                  ),
                                  CustomText.textSpan(
                                    color: CustomColor.white,
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
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Pembersihan',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width:
                CustomSize.sizeWidth(context) /
                    3.36,
                height:
                CustomSize.sizeWidth(context) /
                    3.36,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


// Menu Akad & Serah Terima
class MenuAkadComponent extends StatefulWidget {
  const MenuAkadComponent({Key? key}) : super(key: key);

  @override
  _MenuAkadComponentState createState() => _MenuAkadComponentState();
}

class _MenuAkadComponentState extends State<MenuAkadComponent> {
  double value = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 16,
        ),
        Container(
          width: CustomSize.sizeWidth(context) / 5.26,
          height: 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: CustomColor.secondaryLight3,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
            width: CustomSize.sizeWidth(context) / 1,
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                CustomText.text(
                    color: CustomColor.primary,
                    text: 'Tahap akad & Serah Terima',
                    context: context,
                    size: 0.052,
                    weight: FontWeight.w600,
                    maxLines: 2),
                CustomText.text(
                    color: CustomColor.secondary,
                    text: 'Daftar menu tahap akad & serah terima',
                    context: context,
                    size: 0.033,
                    weight: FontWeight.w400,
                    maxLines: 2),
              ],
            )),
        const SizedBox(
          height: 16,
        ),
        Divider(
          color: CustomColor.secondaryLight3,
          height: 8,
          thickness: 2,
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 12, bottom: 4),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          badgeContent: Text(
                            '!',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/hand_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Akad',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/key_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Serah Terima Bangunan',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/judge_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Tahap',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Serah Terima Legalitas',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 4, bottom: 12),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? CustomColor
                            .secondaryLight2
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        badges.Badge(
                          showBadge: false,
                          badgeContent: Text(
                            '3',
                            style: TextStyle(
                                color:
                                CustomColor.white),
                          ),
                          badgeStyle:
                          const badges.BadgeStyle(
                              padding:
                              EdgeInsets.all(
                                  9)),
                          position: badges.BadgePosition
                              .custom(
                              bottom: 16,
                              start: 28),
                          child: Container(
                            width: CustomSize.sizeWidth(
                                context) /
                                11,
                            height:
                            CustomSize.sizeWidth(
                                context) /
                                11,
                            padding:
                            const EdgeInsets.all(
                                8.4),
                            decoration: BoxDecoration(
                              color:
                              CustomColor.primary,
                              borderRadius:
                              BorderRadius.circular(
                                  50),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColor
                                      .secondaryLight,
                                  blurRadius: 5,
                                  spreadRadius: 0.2,
                                  offset: const Offset(
                                      0,
                                      0), // Shadow position
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/modal/danger_modal.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Daftar',
                                context: context,
                                size: 0.033,
                                weight: FontWeight.w300,
                                maxLines: 2),
                            CustomText.text(
                                color:
                                CustomColor.primary,
                                text: 'Komplain',
                                context: context,
                                size: 0.028,
                                weight: FontWeight.w400,
                                maxLines: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    height:
                    CustomSize.sizeWidth(context) /
                        3.36,
                    decoration: BoxDecoration(
                        color: ((value * 100).toInt() ==
                            100)
                            ? Colors.white30
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.only(
                            topRight:
                            Radius.circular(78),
                            topLeft:
                            Radius.circular(15),
                            bottomLeft:
                            Radius.circular(15),
                            bottomRight:
                            Radius.circular(
                                15))),
                  )
                ],
              ),
              SizedBox(
                width:
                CustomSize.sizeWidth(context) /
                    3.36,
                height:
                CustomSize.sizeWidth(context) /
                    3.36,
              ),
              SizedBox(
                width:
                CustomSize.sizeWidth(context) /
                    3.36,
                height:
                CustomSize.sizeWidth(context) /
                    3.36,
              ),
            ],
          ),
        ),
      ],
    );
  }
}