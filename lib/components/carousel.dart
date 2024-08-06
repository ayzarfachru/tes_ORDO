import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_ordo/components/stepper.dart';
import 'package:test_ordo/utils/custom_button.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';
import 'package:test_ordo/view_model/home_view_model.dart';

class CarouselComponent extends StatefulWidget {
  const CarouselComponent({Key? key}) : super(key: key);

  @override
  _CarouselComponentState createState() => _CarouselComponentState();
}

class _CarouselComponentState extends State<CarouselComponent> {
  int _index = 0;
  double heightCarouselSlider = 2.6;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
      child: Consumer<HomeViewModel>(builder: (context, viewModel, child) {
        return Center(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: viewModel.carouselData.length,
                options: CarouselOptions(
                  autoPlay: false,
                  aspectRatio: 1.0,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 100),
                  height: CustomSize.sizeWidth(context) / heightCarouselSlider,
                  enableInfiniteScroll: true,
                  initialPage: _index,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _index = index;
                      heightCarouselSlider =
                          (viewModel.carouselData[_index].alert != '')
                              ? 2.28
                              : 2.6;
                    });
                  },
                ),
                itemBuilder: (context, index, realIdx) {
                  return Container(
                    width: CustomSize.sizeWidth(context) / 1.16,
                    // height: CustomSize.sizeWidth(context) / 2.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText.text(
                                    color: CustomColor.primary,
                                    text: viewModel.carouselData[index].code,
                                    context: context,
                                    size: 0.036,
                                    weight: FontWeight.w500,
                                    maxLines: 1),
                                CustomButton.customButton(
                                    vertical: 4,
                                    horizontal: 10,
                                    radius: 25,
                                    containerColor: CustomColor.primaryLight,
                                    context: context,
                                    text: viewModel.carouselData[index].label,
                                    size: 0.036,
                                    weight: FontWeight.w400,
                                    color: CustomColor.white),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    width: CustomSize.sizeWidth(context) / 4.2,
                                    height: CustomSize.sizeWidth(context) / 4.2,
                                    viewModel.carouselData[index].image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 4),
                                  width: CustomSize.sizeWidth(context) / 2,
                                  child: Column(
                                    // mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CustomText.customText(
                                          vertical: 0,
                                          horizontal: 0,
                                          radius: 25,
                                          containerColor: Colors.transparent,
                                          context: context,
                                          iconImage: viewModel
                                              .carouselData[index].regencyIcon,
                                          text: viewModel
                                              .carouselData[index].regency,
                                          size: 0.032,
                                          weight: FontWeight.w500,
                                          color: CustomColor.primary),
                                      CustomText.customText(
                                          vertical: 0,
                                          horizontal: 0,
                                          radius: 25,
                                          containerColor: Colors.transparent,
                                          context: context,
                                          iconImage: viewModel
                                              .carouselData[index].addressIcon,
                                          text: viewModel
                                              .carouselData[index].address,
                                          size: 0.032,
                                          weight: FontWeight.w500,
                                          color: CustomColor.primary),
                                      CustomText.customText(
                                          vertical: 0,
                                          horizontal: 0,
                                          radius: 25,
                                          containerColor: Colors.transparent,
                                          context: context,
                                          iconImage: viewModel
                                              .carouselData[index].dateIcon,
                                          text: viewModel
                                              .carouselData[index].date,
                                          size: 0.032,
                                          weight: FontWeight.w500,
                                          color: CustomColor.primary),
                                      CustomText.text(
                                          color: CustomColor.primary,
                                          text: viewModel
                                              .carouselData[index].price,
                                          context: context,
                                          size: 0.032,
                                          weight: FontWeight.w500,
                                          maxLines: 1),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: DashedContainer(
                              color:
                                  (viewModel.carouselData[index].alert != '' &&
                                          heightCarouselSlider == 2.28)
                                      ? CustomColor.secondary
                                      : Colors.transparent,
                            ),
                          ),
                          (viewModel.carouselData[index].alert != '' &&
                                  heightCarouselSlider == 2.28)
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomButton.customButton(
                                            vertical: 0.0,
                                            horizontal: 0.0,
                                            radius: 0,
                                            containerColor: Colors.transparent,
                                            context: context,
                                            iconImage: viewModel
                                                .carouselData[index].dendaIcon,
                                            text: "  Denda Rp",
                                            size: 0.032,
                                            weight: FontWeight.w500,
                                            color: CustomColor.primary),
                                        CustomButton.customButton(
                                            vertical: 0.0,
                                            horizontal: 0.0,
                                            radius: 0,
                                            containerColor: Colors.transparent,
                                            context: context,
                                            text:
                                                " ${viewModel.carouselData[index].denda}",
                                            size: 0.032,
                                            weight: FontWeight.w800,
                                            color: CustomColor.primary),
                                      ],
                                    ),
                                    CustomButton.customButton(
                                        vertical: 4.0,
                                        horizontal: 8.0,
                                        radius: 25,
                                        containerColor: CustomColor.primary,
                                        context: context,
                                        iconImage: viewModel
                                            .carouselData[index].alertIcon,
                                        text:
                                            viewModel.carouselData[index].alert,
                                        size: 0.032,
                                        weight: FontWeight.w500,
                                        color: CustomColor.white)
                                  ],
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              AnimatedSmoothIndicator(
                activeIndex: _index,
                count: viewModel.carouselData.length,
                effect: ExpandingDotsEffect(
                    activeDotColor: CustomColor.primary,
                    dotColor: CustomColor.secondaryLight,
                    dotHeight: 4,
                    dotWidth: 20,
                    spacing: 4,
                    expansionFactor: 1.4),
              ),
            ],
          ),
        );
      }),
    );
  }
}
