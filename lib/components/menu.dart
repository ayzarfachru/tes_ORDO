import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/utils/custom_menu.dart';

import 'menu_item.dart';

class MenuComponent extends StatefulWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  _MenuComponentState createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  double value = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          builder: (context) {
                            return const MenuPemesananComponent();
                          });
                    },
                    child: CustomMenu.customMenu(
                        context: context,
                        text: 'Pemesanan',
                        value: 1.0,
                        image: 'assets/menu/house_menu.png')),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        builder: (context) {
                          return const MenuAdministrasiComponent();
                        });
                  },
                  child: CustomMenu.customMenu(
                      context: context,
                      text: 'Administrasi',
                      value: 0.5,
                      image: 'assets/menu/book_menu.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        builder: (context) {
                          return const MenuPembangunanComponent();
                        });
                  },
                  child: CustomMenu.customMenu(
                      context: context,
                      text: 'Pembangunan',
                      value: 0.0,
                      image: 'assets/menu/house2_menu.png'),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        builder: (context) {
                          return const MenuAkadComponent();
                        });
                  },
                  child: CustomMenu.customMenu(
                      context: context,
                      text: 'Akad & Serah Terima',
                      value: 0.0,
                      image: 'assets/menu/door_menu.png'),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
