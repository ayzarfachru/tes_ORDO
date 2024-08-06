import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';
import 'package:test_ordo/view_model/home_view_model.dart';

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
    return ChangeNotifierProvider<HomeViewModel>(
        create: (_) => HomeViewModel(),
        child: Consumer<HomeViewModel>(builder: (context, viewModel, child) {
          return Center(
            child: SizedBox(
              height: CustomSize.sizeWidth(context) / 2.9,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.normal),
                  itemCount: viewModel.bannerData.length,
                  itemBuilder: (ctx, index) {
                    // double width = MediaQuery.of(context).size.width;
                    //
                    // for (int i = 1; i <= 100; i++) {
                    //   double x = (i / width);
                    //   print('(${x.toStringAsFixed(3)} * MediaQuery.of(context).size.width).toInt().toDouble() == ${i}');
                    // }
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: AspectRatio(
                        aspectRatio: 358 / 155,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: viewModel.bannerData[index].color,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                alignment: Alignment.bottomRight,
                                width: CustomSize.sizeWidth(context) / 2.7,
                                height: CustomSize.sizeWidth(context) / 2.7,
                                viewModel.bannerData[index].image,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              width: CustomSize.sizeWidth(context) / 2.6,
                              padding: EdgeInsets.only(
                                  left: (0.061 *
                                          MediaQuery.of(context).size.width)
                                      .toInt()
                                      .toDouble()),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    maxLines: 1,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: viewModel
                                                .bannerData[index].discount,
                                            style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                    fontSize: (0.044 *
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width)
                                                        .toInt()
                                                        .toDouble(),
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.213,
                                                    color: Colors.white))),
                                        TextSpan(
                                            text: ' Diskon',
                                            style: GoogleFonts.outfit(
                                                textStyle: TextStyle(
                                                    fontSize: (0.036 *
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width)
                                                        .toInt()
                                                        .toDouble(),
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.19,
                                                    color: Colors.white))),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(viewModel.bannerData[index].label,
                                      maxLines: 1,
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              fontSize: (0.049 *
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width)
                                                  .toInt()
                                                  .toDouble(),
                                              fontWeight: FontWeight.w500,
                                              height: 1.25,
                                              color: Colors.white))),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/calendar.svg',
                                        height: (0.029 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width)
                                            .toInt()
                                            .toDouble(),
                                        width: (0.029 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width)
                                            .toInt()
                                            .toDouble(),
                                        fit: BoxFit.contain,
                                        colorFilter: const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                      ),
                                      Text(
                                          ' ${viewModel.bannerData[index].date}',
                                          maxLines: 1,
                                          style: GoogleFonts.outfit(
                                              textStyle: TextStyle(
                                                  fontSize: (0.024 *
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width)
                                                      .toInt()
                                                      .toDouble(),
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.126,
                                                  color: Colors.white))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
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
        }));
  }
}
