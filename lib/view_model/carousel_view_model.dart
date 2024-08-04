import 'package:flutter/cupertino.dart';
import 'package:test_ordo/model/carousel_model.dart';

class CarouselViewModel extends ChangeNotifier {
  List<CarouselModel> carouselData = [
    CarouselModel(
      code: '#881726478123',
      label: 'Komersil',
      image: 'assets/carousel/carousel_1.png',
      regency: 'Candra Bhirawa',
      address: 'Lotus, Kavling A1, Blok B No. 4',
      date: '25/11/2022, 09:00',
      price: 'Rp 850.000.000',
      denda: '',
      alert: '',
      regencyIcon: 'assets/house.png',
      addressIcon: 'assets/location_2.png',
      dateIcon: 'assets/calendar_2.png',
      dendaIcon: 'assets/dollar.png',
      alertIcon: 'assets/danger.png',
    ),
    CarouselModel(
      code: '#881726478124',
      label: 'Komersil',
      image: 'assets/carousel/carousel_2.png',
      regency: 'Bukit Raya Residance',
      address: 'Jaguar, Kavling A1, Blok D No. 4',
      date: '25/12/2023, 09:00',
      price: 'Rp 985.799.300',
      denda: '8.550.000',
      alert: 'Terlambat 7 Hari',
      regencyIcon: 'assets/house.png',
      addressIcon: 'assets/location_2.png',
      dateIcon: 'assets/calendar_2.png',
      dendaIcon: 'assets/dollar.png',
      alertIcon: 'assets/danger.png',
    ),
    CarouselModel(
      code: '#881726478125',
      label: 'Komersil',
      image: 'assets/carousel/carousel_2.png',
      regency: 'Bukit Raya Residance',
      address: 'Jaguar, Kavling A1, Blok D No. 8',
      date: '28/12/2023, 09:00',
      price: 'Rp 1.124.335.000',
      denda: '12.484.000',
      alert: 'Terlambat 9 Hari',
      regencyIcon: 'assets/house.png',
      addressIcon: 'assets/location_2.png',
      dateIcon: 'assets/calendar_2.png',
      dendaIcon: 'assets/dollar.png',
      alertIcon: 'assets/danger.png',
    ),
  ];

  CarouselViewModel() {
    initState();
  }

  void initState() {
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
