import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:test_ordo/model/menu_model.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';
import 'package:badges/badges.dart' as badges;
import 'package:test_ordo/view_model/home_view_model.dart';

// Menu Pemesanan
class MenuItemComponent extends StatefulWidget {
  MenuModel? menuData;

  MenuItemComponent(this.menuData, {super.key});

  @override
  _MenuItemComponentState createState() => _MenuItemComponentState(menuData);
}

class _MenuItemComponentState extends State<MenuItemComponent> {
  MenuModel? menuData;

  _MenuItemComponentState(this.menuData);

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
        titleComponent(context),
        const SizedBox(
          height: 16,
        ),
        Divider(
          color: CustomColor.secondaryLight3,
          height: 8,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: menuData!.menuItem.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (ctx, index) {
                return Center(
                  child: Stack(
                    children: [
                      backgroundComponent(context),
                      dataComponent(context, index),
                      (menuData!.menuItem[index].valueNotification == '' &&
                              menuData!.menuItem[index].isCircularProgress ==
                                  false)
                          ? layerOpacityComponent(context)
                          : const SizedBox()
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  Container titleComponent(BuildContext context) {
    return Container(
          width: CustomSize.sizeWidth(context) / 1,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText.text(
                  color: CustomColor.primary,
                  text: 'Tahap ${menuData!.text}',
                  context: context,
                  size: 0.052,
                  weight: FontWeight.w600,
                  maxLines: 2),
              CustomText.text(
                  color: CustomColor.secondary,
                  text: menuData!.subTitle,
                  context: context,
                  size: 0.033,
                  weight: FontWeight.w400,
                  maxLines: 2),
            ],
          ));
  }

  Container backgroundComponent(BuildContext context) {
    return Container(
      width: CustomSize.sizeWidth(context) / 3.36,
      height: CustomSize.sizeWidth(context) / 3.36,
      decoration: BoxDecoration(
          color: CustomColor.secondaryLight2,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(78),
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
    );
  }

  Container dataComponent(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 14.0),
      width: CustomSize.sizeWidth(context) / 3.36,
      height: CustomSize.sizeWidth(context) / 3.36,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          (menuData!.menuItem[index].isCircularProgress == true)
              ? Container(
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
                    percent: menuData!.menuItem[index].value,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: CustomColor.red,
                    center: RichText(
                      text: TextSpan(
                        children: [
                          CustomText.textSpan(
                            color: CustomColor.white,
                            text:
                                '${(menuData!.menuItem[index].value * 100).toInt()}',
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
                )
              : badges.Badge(
                  showBadge: (menuData!.menuItem[index].valueNotification == '')
                      ? false
                      : true,
                  badgeContent: Text(
                    menuData!.menuItem[index].valueNotification,
                    style: TextStyle(color: CustomColor.white),
                  ),
                  badgeStyle:
                      const badges.BadgeStyle(padding: EdgeInsets.all(9)),
                  position: badges.BadgePosition.custom(bottom: 16, start: 28),
                  child: Container(
                    width: CustomSize.sizeWidth(context) / 11,
                    height: CustomSize.sizeWidth(context) / 11,
                    padding: const EdgeInsets.all(8.4),
                    decoration: BoxDecoration(
                      color: CustomColor.primary,
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
                      menuData!.menuItem[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.text(
                  color: CustomColor.primary,
                  text: menuData!.menuItem[index].title,
                  context: context,
                  size: 0.033,
                  weight: FontWeight.w300,
                  maxLines: 2),
              CustomText.text(
                  color: CustomColor.primary,
                  text: menuData!.menuItem[index].subTitle,
                  context: context,
                  size: 0.028,
                  weight: FontWeight.w400,
                  maxLines: 2),
            ],
          ),
        ],
      ),
    );
  }

  Container layerOpacityComponent(BuildContext context) {
    return Container(
      width: CustomSize.sizeWidth(context) / 3.36,
      height: CustomSize.sizeWidth(context) / 3.36,
      decoration: const BoxDecoration(
          color: Colors.white30,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(78),
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
    );
  }
}
