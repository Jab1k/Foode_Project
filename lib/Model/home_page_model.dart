import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialDeal {
  final String food;
  LinearGradient color, buttonColor;

  SpecialDeal(
      {required this.food, required this.color, required this.buttonColor});
}

class PopularRes {
  final SvgPicture icon;
  final String name, time;

  PopularRes({required this.icon, required this.name, required this.time});
}

class Menu {
  final String image, name, title, price;

  Menu(
      {required this.image,
      required this.name,
      required this.title,
      required this.price});
}

List<Menu> PopMenu = [
  Menu(image: 'assets/image/salad1.jpg', name: 'Original Salad', title: 'Lovy Food', price: '\$8'),
  Menu(image: 'assets/image/salad2.jpg', name: 'Fresh Salad', title: 'Cloudy Resto', price: '\$10'),
  Menu(image: 'assets/image/icecream.jpg', name: 'Yummie Ice Cream', title: 'Circlo Resto', price: '\$6'),
  Menu(image: 'assets/image/vegan.jpg', name: 'Vegan Special', title: 'Haty Food', price: '\$11'),
  Menu(image: 'assets/image/lagman.jpg', name: 'Mixed Pasta', title: 'Recto Food', price: '\$13'),
];

List<PopularRes> restaurant = [
  PopularRes(
      icon: SvgPicture.asset(
        'assets/svg/lovy.svg',
        color: Color(0xffF43F5E),
        height: 60.h,
        width: 68.03.w,
      ),
      name: 'Lovy Food',
      time: '10 mins'),
  PopularRes(
      icon: SvgPicture.asset(
        'assets/svg/cloudy.svg',
        height: 55.h,
        width: 75.w,
        color: Color(0xffFFB800),
      ),
      name: 'Cloudy Resto',
      time: '14 mins'),
  PopularRes(
      icon: SvgPicture.asset(
        'assets/svg/circlo.svg',
        height: 60.h,
        width: 60.w,
        color: Color(0xff74A3FF),
      ),
      name: 'Circlo Resto',
      time: '11 mins'),
  PopularRes(
      icon: SvgPicture.asset(
        'assets/svg/haty.svg',
        height: 60.h,
        width: 81.29.w,
        color: Color(0xff23A757),
      ),
      name: 'Haty Food',
      time: '16 mins'),
  PopularRes(
      icon: SvgPicture.asset(
        'assets/svg/recto.svg',
        height: 60.h,
        width: 60.w,
        color: Color(0xffFFB800),
      ),
      name: 'Recto Food',
      time: '15 mins'),
  PopularRes(
      icon: SvgPicture.asset(
        'assets/svg/hearthy.svg',
        height: 60.h,
        width: 71.17.w,
        color: Color(0xffFFB800),
      ),
      name: 'Recto Food',
      time: '15 mins'),
];

List<SpecialDeal> aksiya = [
  SpecialDeal(
      food: 'assets/image/burger.png',
      color: LinearGradient(
        colors: [Color(0xffFF1843), Color(0xffFF7E95)],
        begin: Alignment.bottomRight,
        end: Alignment.bottomLeft,
      ),
      buttonColor:
          LinearGradient(colors: [Color(0xffFFB800), Color(0xffFFB800)])),
  SpecialDeal(
      food: 'assets/image/pizza.png',
      color: LinearGradient(
        colors: [Color(0xffFFB800), Color(0xffFFDA7B)],
        begin: Alignment.bottomRight,
        end: Alignment.bottomLeft,
      ),
      buttonColor:
          LinearGradient(colors: [Color(0xffFF1843), Color(0xffFF7E95)])),
  SpecialDeal(
      food: 'assets/image/kebab.png',
      color: LinearGradient(
        colors: [Color(0xff1EC87B), Color(0xff10EB89)],
        begin: Alignment.bottomRight,
        end: Alignment.bottomLeft,
      ),
      buttonColor:
          LinearGradient(colors: [Color(0xffFFB800), Color(0xffFFB800)])),
];
