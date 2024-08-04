class CarouselModel {
  final String code;
  final String label;
  final String image;
  final String regency;
  final String regencyIcon;
  final String address;
  final String addressIcon;
  final String date;
  final String dateIcon;
  final String price;
  final String denda;
  final String dendaIcon;
  final String alert;
  final String alertIcon;

  CarouselModel(
      {required this.code,
      required this.label,
      required this.image,
      required this.regency,
      required this.regencyIcon,
      required this.address,
      required this.addressIcon,
      required this.date,
      required this.dateIcon,
      required this.price,
      required this.denda,
      required this.dendaIcon,
      required this.alert,
      required this.alertIcon});

  factory CarouselModel.fromJson(Map<String, dynamic> json) {
    return CarouselModel(
        code: json['code'],
        label: json['label'],
        image: json['image'],
        regency: json['regency'],
        regencyIcon: json['regencyIcon'],
        address: json['address'],
        addressIcon: json['addressIcon'],
        date: json['date'],
        dateIcon: json['dateIcon'],
        price: json['price'],
        denda: json['denda'],
        dendaIcon: json['dendaIcon'],
        alert: json['alert'],
        alertIcon: json['alertIcon']);
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'label': label,
      'image': image,
      'regency': regency,
      'address': address,
      'date': date,
      'price': price,
      'denda': denda,
      'alert': alert,
    };
  }
}
