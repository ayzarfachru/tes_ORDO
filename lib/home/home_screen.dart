import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/components/banner.dart';
import 'package:test_ordo/components/carousel.dart';
import 'package:test_ordo/components/header.dart';
import 'package:test_ordo/components/menu.dart';
import 'package:test_ordo/components/stepper.dart';
import 'package:test_ordo/utils/custom_button.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_navbar.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearch = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.background,
        body: SafeArea(
          top: true,
          child: SizedBox(
            child: ListView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal),
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 25.0),
                  child: const HeaderComponent(),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 25.0),
                  child: const BannerComponent(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText.text(
                              color: CustomColor.primary,
                              text: 'Pesanan Terbaru',
                              context: context,
                              size: 0.048,
                              weight: FontWeight.w600,
                              maxLines: 1),
                          CustomText.text(
                              color: CustomColor.secondary,
                              text: 'Daftar pesanan terbaru anda',
                              context: context,
                              size: 0.033,
                              weight: FontWeight.w400,
                              maxLines: 1),
                        ],
                      ),
                      isSearch
                          ? GestureDetector(
                              onTap: () {
                                isSearch = false;
                                setState(() {});
                              },
                              child: Image.asset(
                                width: CustomSize.sizeWidth(context) / 18,
                                'assets/right_arrow.png',
                                fit: BoxFit.contain,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                !isSearch ? emptyComponent(context) : menuComponent(context)
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomNavbar.customNavbar(
            page: 1, context: context, color: CustomColor.primary));
  }

  Container emptyComponent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      child: Column(
        children: [
          Image.asset(
            width: CustomSize.sizeWidth(context) / 1.5,
            'assets/Empty.png',
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText.text(
                  color: CustomColor.primary,
                  text: 'Pesanan Kosong',
                  context: context,
                  size: 0.048,
                  weight: FontWeight.w600,
                  maxLines: 1),
              CustomText.text(
                  color: CustomColor.secondary,
                  text: 'Ayo tambahkan pesanan baru',
                  context: context,
                  size: 0.033,
                  weight: FontWeight.w400,
                  maxLines: 1),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              isSearch = true;
              setState(() {});
            },
            child: CustomButton.customButton(
                vertical: 14.0,
                horizontal: 22.0,
                radius: 25,
                containerColor: CustomColor.primary,
                context: context,
                iconImage: 'assets/Search.png',
                text: '  Eksplore Properti',
                size: 0.04,
                weight: FontWeight.w500,
                color: Colors.white),
          )
        ],
      ),
    );
  }

  Container menuComponent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StepperComponent(),
          const SizedBox(
            height: 12,
          ),
          const CarouselComponent(),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.text(
                      color: CustomColor.primary,
                      text: 'Menu',
                      context: context,
                      size: 0.048,
                      weight: FontWeight.w600,
                      maxLines: 1),
                  CustomText.text(
                      color: CustomColor.secondary,
                      text: 'Daftar menu transaksi',
                      context: context,
                      size: 0.033,
                      weight: FontWeight.w400,
                      maxLines: 1),
                ],
              ),
              isSearch
                  ? GestureDetector(
                      onTap: () {
                        isSearch = false;
                        setState(() {});
                      },
                      child: Image.asset(
                        color: CustomColor.primary,
                        width: CustomSize.sizeWidth(context) / 18,
                        'assets/category.png',
                        fit: BoxFit.contain,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const MenuComponent()
        ],
      ),
    );
  }
}
