import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpecialDeal {
  final String food;
  LinearGradient color,buttonColor;

  SpecialDeal({required this.food, required this.color,required this.buttonColor});
}

class PopularRes {
  final SvgPicture icon;
  final String name, time;

  PopularRes({required this.icon,required this.name,required this.time});
}
