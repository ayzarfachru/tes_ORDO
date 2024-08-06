import 'dart:ui';

class BannerModel {
  final String discount;
  final String label;
  final String image;
  final String date;
  final Color color;

  BannerModel(
      {required this.discount,
        required this.label,
        required this.image,
        required this.date,
        required this.color});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
        discount: json['discount'],
        label: json['label'],
        image: json['image'],
        date: json['date'],
        color: json['color']);
  }
}
