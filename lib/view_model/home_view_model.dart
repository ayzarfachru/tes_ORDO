import 'package:flutter/cupertino.dart';
import 'package:test_ordo/model/banner_model.dart';
import 'package:test_ordo/model/carousel_model.dart';
import 'package:test_ordo/model/menu_item_modal.dart';
import 'package:test_ordo/model/menu_model.dart';

class HomeViewModel extends ChangeNotifier {
  int activeStep = 3;
  String notification = '3';

  List<BannerModel> bannerData = [
    BannerModel(
        discount: '20%',
        label: 'American House',
        date: 'Periode 19 Nov 2023 s/d 15 Des 2023',
        image: 'assets/image_home_banner.png',
        color: const Color(0xFF334A34)),
    BannerModel(
        discount: '17%',
        label: 'American House',
        date: 'Periode 27 July 2023 s/d 22 Oct 2023',
        image: 'assets/image_home_banner.png',
        color: const Color(0xFF9ACA3E)),
  ];

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

  List<MenuModel> menuData = [
    MenuModel(
        text: 'Pemesanan',
        subTitle: 'Daftar menu tahap pemesanan',
        value: 1.0,
        image: 'assets/menu/house_menu.png',
        menuItem: [
          MenuItemModel(
              title: 'Booking',
              subTitle: 'Fee',
              image: 'assets/modal/money_modal.png',
              valueNotification: '3',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Pesanan',
              subTitle: 'Belum Bayar',
              image: 'assets/modal/wallet_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Riwayat',
              subTitle: 'Pemesanan',
              image: 'assets/modal/note_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
        ]),
    MenuModel(
        text: 'Administrasi',
        subTitle: 'Daftar menu tahap administrasi',
        value: 0.5,
        image: 'assets/menu/book_menu.png',
        menuItem: [
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'SPS',
              image: 'assets/modal/ruler_modal.png',
              valueNotification: '!',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'SPR',
              image: 'assets/modal/edit_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'PPJB',
              image: 'assets/modal/document_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Daftar',
              subTitle: 'Dokumen',
              image: 'assets/modal/note2_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'SP3K',
              image: 'assets/modal/archive_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Bayar',
              subTitle: 'Angsuran',
              image: 'assets/modal/receipt_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
        ]),
    MenuModel(
        text: 'Pembangunan',
        subTitle: 'Daftar menu tahap pembangunan rumah',
        value: 0.0,
        image: 'assets/menu/house2_menu.png',
        menuItem: [
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Persiapan',
              image: '',
              valueNotification: '',
              isCircularProgress: true,
              value: 1.0),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Pondasi & Struktur',
              image: '',
              valueNotification: '',
              isCircularProgress: true,
              value: 0.2),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Rumah Unfinished',
              image: '',
              valueNotification: '',
              isCircularProgress: true,
              value: 0.3),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Finishing & Interior',
              image: '',
              valueNotification: '',
              isCircularProgress: true,
              value: 0.4),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Pembersihan',
              image: '',
              valueNotification: '',
              isCircularProgress: true,
              value: 0.0),
        ]),
    MenuModel(
        text: 'Akad & Serah Terima',
        subTitle: 'Daftar menu tahap akad & serah terima',
        value: 0.0,
        image: 'assets/menu/door_menu.png',
        menuItem: [
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Akad',
              image: 'assets/modal/hand_modal.png',
              valueNotification: '!',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Serah Terima Bangunan',
              image: 'assets/modal/key_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Tahap',
              subTitle: 'Serah Terima Legalitas',
              image: 'assets/modal/judge_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
          MenuItemModel(
              title: 'Daftar',
              subTitle: 'Komplain',
              image: 'assets/modal/danger_modal.png',
              valueNotification: '',
              isCircularProgress: false,
              value: 0.0),
        ]),
  ];

  HomeViewModel() {
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
