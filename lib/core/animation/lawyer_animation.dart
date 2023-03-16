
import 'package:flutter/cupertino.dart';

class LawyerAnimation extends PageRouteBuilder{
  final page;
  LawyerAnimation({required this.page}) : super(pageBuilder:(context,animation,animation2) => page,transitionsBuilder: (context,animation,animation2,child) {
  return ScaleTransition(scale:animation,child: FadeTransition(opacity: animation,child: child,));
  });}
