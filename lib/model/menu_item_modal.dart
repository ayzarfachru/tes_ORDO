class MenuItemModel {
  final String title;
  final String subTitle;
  final String image;
  final String valueNotification;
  final bool isCircularProgress;
  final double value;

  MenuItemModel(
      {required this.title,
        required this.subTitle,
        required this.image,
        required this.valueNotification,
        required this.isCircularProgress,
        required this.value});

  factory MenuItemModel.fromJson(Map<String, dynamic> json) {
    return MenuItemModel(
        title: json['title'],
        subTitle: json['subTitle'],
        image: json['image'],
        valueNotification: json['valueNotification'],
        isCircularProgress: json['isCircularProgress'],
        value: json['value']);
  }
}
