import 'menu_item_modal.dart';

class MenuModel {
  final String text;
  final String subTitle;
  final String image;
  final double value;
  final List<MenuItemModel> menuItem;

  MenuModel(
      {required this.text,
        required this.subTitle,
        required this.image,
        required this.value,
        required this.menuItem,});

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
        text: json['text'],
        subTitle: json['subTitle'],
        image: json['image'],
        value: json['value'],
        menuItem: json['menuItem']);
  }
}
