import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_ordo/utils/custom_menu.dart';
import 'package:test_ordo/view_model/home_view_model.dart';

import 'menu_item.dart';

class MenuComponent extends StatefulWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  _MenuComponentState createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
        create: (_) => HomeViewModel(),
        child: Consumer<HomeViewModel>(builder: (context, viewModel, child) {
          return GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: viewModel.menuData.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20
              ),
              itemBuilder: (ctx, index) {
                return Center(
                  child: GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          builder: (context) {
                            return MenuItemComponent(viewModel.menuData[index]);
                          });
                    },
                    child: CustomMenu.customMenu(
                        context: context,
                        text: viewModel.menuData[index].text,
                        value: viewModel.menuData[index].value,
                        image: viewModel.menuData[index].image),
                  ),
                );
              });
        }));
  }
}
