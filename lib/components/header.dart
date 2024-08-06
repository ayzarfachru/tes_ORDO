import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_ordo/utils/custom_color.dart';
import 'package:badges/badges.dart' as badges;
import 'package:test_ordo/view_model/home_view_model.dart';

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
    return ChangeNotifierProvider<HomeViewModel>(
        create: (_) => HomeViewModel(),
        child: Consumer<HomeViewModel>(builder: (context, viewModel, child) {
          return Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                imageAndText(),
                const SizedBox(
                  width: 10,
                ),
                bellComponent(viewModel.notification),
              ],
            ),
          );
        }));
  }

  Expanded imageAndText() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/avatar_image.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          textComponent()
        ],
      ),
    );
  }

  Expanded textComponent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
            child: FittedBox(
              child: Text(
                'Temukan \nHunian Impian',
                maxLines: 2,
                style: GoogleFonts.outfit(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                        color: Color(0xFF334A34))),
              ),
            ),
          ),
          SizedBox(
            height: 15,
            child: FittedBox(
              child: Text(
                'Agen Properti Terbaik',
                maxLines: 1,
                style: GoogleFonts.outfit(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.151,
                        color: Color(0xFF9B9B9B))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox bellComponent(String notification) {
    return SizedBox(
      child: badges.Badge(
        badgeContent: Text(
          notification,
          style: GoogleFonts.outfit(
              color: CustomColor.white,
              fontWeight: FontWeight.w500,
              fontSize: 10.67),
        ),
        badgeAnimation: const badges.BadgeAnimation.fade(),
        badgeStyle: const badges.BadgeStyle(padding: EdgeInsets.all(9)),
        position: badges.BadgePosition.custom(top: -10, start: 22),
        child: Container(
          width: 35,
          height: 35,
          padding: const EdgeInsets.all(7.5),
          decoration: BoxDecoration(
            color: CustomColor.white,
            borderRadius: BorderRadius.circular(18.51),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFC5D1C6).withOpacity(0.16),
                blurRadius: 11,
                spreadRadius: 0.0,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: SvgPicture.asset(
            'assets/svg/bell.svg',
            height: 20,
            width: 20,
            fit: BoxFit.contain,
            colorFilter:
                const ColorFilter.mode(Color(0xFF334A34), BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
