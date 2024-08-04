import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';
import 'package:badges/badges.dart' as badges;

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  _HeaderComponentState createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: CustomSize.sizeWidth(context) / 7.8,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/avatar_image.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                  width: CustomSize.sizeWidth(context) / 3,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.text(
                          color: CustomColor.primary,
                          text: 'Temukan \nHunian Impian',
                          context: context,
                          size: 0.048,
                          weight: FontWeight.w600,
                          maxLines: 2),
                      CustomText.text(
                          color: CustomColor.secondary,
                          text: 'Agen Properti Terbaik',
                          context: context,
                          size: 0.033,
                          weight: FontWeight.w400,
                          maxLines: 1),
                    ],
                  ))
            ],
          ),
          badges.Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(color: CustomColor.white),
            ),
            badgeStyle: const badges.BadgeStyle(padding: EdgeInsets.all(9)),
            position: badges.BadgePosition.bottomEnd(bottom: 16),
            child: Container(
              width: CustomSize.sizeWidth(context) / 11.8,
              height: CustomSize.sizeWidth(context) / 11.8,
              padding: const EdgeInsets.all(8.8),
              decoration: BoxDecoration(
                color: CustomColor.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: CustomColor.secondaryLight,
                    blurRadius: 5,
                    spreadRadius: 0.2,
                    offset: const Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: Image.asset(
                'assets/Bell.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
