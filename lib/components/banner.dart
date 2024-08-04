import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';

class BannerComponent extends StatefulWidget {
  const BannerComponent({Key? key}) : super(key: key);

  @override
  _BannerComponentState createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // List<Widget> BannerComponentItems = [
    //   Padding(
    //     padding: const EdgeInsets.only(left: 18.0),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         color: Color.fromRGBO(51, 74, 52, 1),
    //         borderRadius: BorderRadius.circular(15),
    //       ),
    //     ),
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.only(left: 18.0),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         color: Color.fromRGBO(154, 202, 62, 1),
    //         borderRadius: BorderRadius.circular(15),
    //       ),
    //     ),
    //   ),
    // ];
    // Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        // width: CustomSize.sizeWidth(context) / 11.8,
        height: CustomSize.sizeWidth(context) / 2.9,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.6),
              child: Container(
                width: CustomSize.sizeWidth(context) / 1.28,
                height: CustomSize.sizeWidth(context) / 2.9,
                decoration: BoxDecoration(
                  color: CustomColor.primary,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: CustomSize.sizeWidth(context) / 2.6,
                      padding: const EdgeInsets.only(left: 26),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                CustomText.textSpan(
                                  color: CustomColor.white,
                                  text: '20%',
                                  context: context,
                                  size: 0.042,
                                  weight: FontWeight.w700,
                                ),
                                CustomText.textSpan(
                                  color: CustomColor.white,
                                  text: ' Diskon',
                                  context: context,
                                  size: 0.036,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          CustomText.text(
                              color: CustomColor.white,
                              text: 'American House',
                              context: context,
                              size: 0.042,
                              weight: FontWeight.w700,
                              maxLines: 1),
                          Row(
                            children: [
                              Image.asset(
                                'assets/Calendar.png',
                                fit: BoxFit.contain,
                              ),
                              Expanded(
                                child: CustomText.text(
                                    color: CustomColor.white,
                                    text: ' Periode 19 Nov 2023 s/d 15 Des 2023',
                                    context: context,
                                    size: 0.02,
                                    weight: FontWeight.w400,
                                    maxLines: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      width: CustomSize.sizeWidth(context) / 2.7,
                      height: CustomSize.sizeWidth(context) / 2.7,
                      'assets/image_home_banner.png',
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.6),
              child: Container(
                width: CustomSize.sizeWidth(context) / 1.3,
                height: CustomSize.sizeWidth(context) / 2.9,
                decoration: BoxDecoration(
                  color: CustomColor.primaryLight,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: CustomSize.sizeWidth(context) / 2.6,
                      padding: const EdgeInsets.only(left: 26),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                CustomText.textSpan(
                                  color: CustomColor.white,
                                  text: '20%',
                                  context: context,
                                  size: 0.042,
                                  weight: FontWeight.w700,
                                ),
                                CustomText.textSpan(
                                  color: CustomColor.white,
                                  text: ' Diskon',
                                  context: context,
                                  size: 0.036,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          CustomText.text(
                              color: CustomColor.white,
                              text: 'American House',
                              context: context,
                              size: 0.042,
                              weight: FontWeight.w700,
                              maxLines: 1),
                          Row(
                            children: [
                              Image.asset(
                                'assets/Calendar.png',
                                fit: BoxFit.contain,
                              ),
                              Expanded(
                                child: CustomText.text(
                                    color: CustomColor.white,
                                    text: ' Periode 19 Nov 2023 s/d 15 Des 2023',
                                    context: context,
                                    size: 0.02,
                                    weight: FontWeight.w400,
                                    maxLines: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      width: CustomSize.sizeWidth(context) / 2.7,
                      height: CustomSize.sizeWidth(context) / 2.7,
                      'assets/image_home_banner.png',
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // child: BannerComponentSlider(
      //   items: BannerComponentItems,
      //   options: BannerComponentOptions(
      //     height: size.height*0.2,
      //     pageSnapping: true,
      //     animateToClosest: true,
      //     disableCenter: true,
      //     padEnds: true,
      //     viewportFraction: 1.0,
      //     autoPlay: false,
      //     enableInfiniteScroll: false,
      //     onPageChanged: (index, reason) {
      //       // Optional callback when the page changes
      //       // You can use it to update any additional UI components
      //     },
      //   ),
      // ),
    );
  }
}
