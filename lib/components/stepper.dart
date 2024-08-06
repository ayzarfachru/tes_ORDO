import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:test_ordo/utils/custom_size.dart';
import 'package:test_ordo/utils/custom_text.dart';
import 'package:test_ordo/view_model/home_view_model.dart';

class StepperComponent extends StatefulWidget {
  const StepperComponent({Key? key}) : super(key: key);

  @override
  _StepperComponentState createState() => _StepperComponentState();
}

class _StepperComponentState extends State<StepperComponent> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
        create: (_) => HomeViewModel(),
        child: Consumer<HomeViewModel>(builder: (context, viewModel, child) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            width: CustomSize.sizeWidth(context) / 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      width: CustomSize.sizeWidth(context) / 20,
                      height: CustomSize.sizeWidth(context) / 20,
                      (viewModel.activeStep < 1)
                          ? 'assets/stepper/pending.png'
                          : (viewModel.activeStep == 1)
                              ? 'assets/stepper/process.png'
                              : 'assets/stepper/done.png',
                      fit: BoxFit.contain,
                      color: (viewModel.activeStep > 0)
                          ? CustomColor.primary
                          : CustomColor.secondaryLight,
                    ),
                    (viewModel.activeStep > 1)
                        ? Expanded(
                            child: Container(
                                height: 1, color: CustomColor.primary),
                          )
                        : const Expanded(
                            child: DashedContainer(),
                          ),
                    Image.asset(
                      width: CustomSize.sizeWidth(context) / 20,
                      height: CustomSize.sizeWidth(context) / 20,
                      (viewModel.activeStep < 2)
                          ? 'assets/stepper/pending.png'
                          : (viewModel.activeStep == 2)
                              ? 'assets/stepper/process.png'
                              : 'assets/stepper/done.png',
                      fit: BoxFit.contain,
                      color: (viewModel.activeStep > 1)
                          ? CustomColor.primary
                          : CustomColor.secondaryLight,
                    ),
                    (viewModel.activeStep > 2)
                        ? Expanded(
                            child: Container(
                                height: 1, color: CustomColor.primary),
                          )
                        : const Expanded(
                            child: DashedContainer(),
                          ),
                    Image.asset(
                      width: CustomSize.sizeWidth(context) / 20,
                      height: CustomSize.sizeWidth(context) / 20,
                      (viewModel.activeStep < 3)
                          ? 'assets/stepper/pending.png'
                          : (viewModel.activeStep == 3)
                              ? 'assets/stepper/process.png'
                              : 'assets/stepper/done.png',
                      fit: BoxFit.contain,
                      color: (viewModel.activeStep > 2)
                          ? CustomColor.primary
                          : CustomColor.secondaryLight,
                    ),
                    (viewModel.activeStep > 3)
                        ? Expanded(
                            child: Container(
                                height: 1, color: CustomColor.primary),
                          )
                        : const Expanded(
                            child: DashedContainer(),
                          ),
                    Image.asset(
                      width: CustomSize.sizeWidth(context) / 20,
                      height: CustomSize.sizeWidth(context) / 20,
                      (viewModel.activeStep < 4)
                          ? 'assets/stepper/pending.png'
                          : (viewModel.activeStep == 4)
                              ? 'assets/stepper/process.png'
                              : 'assets/stepper/done.png',
                      fit: BoxFit.contain,
                      color: (viewModel.activeStep > 3)
                          ? CustomColor.primary
                          : CustomColor.secondaryLight,
                    ),
                    (viewModel.activeStep > 4)
                        ? Expanded(
                            child: Container(
                                height: 1, color: CustomColor.primary),
                          )
                        : const Expanded(
                            child: DashedContainer(),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText.text(
                        color: (viewModel.activeStep > 0)
                            ? CustomColor.primary
                            : CustomColor.secondaryLight,
                        text: 'Pemesanan',
                        context: context,
                        size: 0.032,
                        weight: FontWeight.w400,
                        maxLines: 1),
                    CustomText.text(
                        color: (viewModel.activeStep > 1)
                            ? CustomColor.primary
                            : CustomColor.secondaryLight,
                        text: 'Administrasi',
                        context: context,
                        size: 0.032,
                        weight: FontWeight.w400,
                        maxLines: 1),
                    CustomText.text(
                        color: (viewModel.activeStep > 2)
                            ? CustomColor.primary
                            : CustomColor.secondaryLight,
                        text: 'Pembangunan',
                        context: context,
                        size: 0.032,
                        weight: FontWeight.w400,
                        maxLines: 1),
                    CustomText.text(
                        color: (viewModel.activeStep > 3)
                            ? CustomColor.primary
                            : CustomColor.secondaryLight,
                        text: 'Serah Terima',
                        context: context,
                        size: 0.032,
                        weight: FontWeight.w400,
                        maxLines: 1),
                    CustomText.text(
                        color: CustomColor.secondaryLight,
                        text: '',
                        context: context,
                        size: 0.032,
                        weight: FontWeight.w400,
                        maxLines: 1),
                  ],
                ),
              ],
            ),
          );
        }));
  }
}

class DashedContainer extends StatelessWidget {
  const DashedContainer({Key? key, this.height = 1, this.color = Colors.grey})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
