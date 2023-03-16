import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../screens/lawyer.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  bool isLight = true;
  bool isSwitchedMode = false;
  bool isSwitchedLanguage = false;

  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) {
      if (event is LightThemeEvent) {
        isLight = true;

        emit(Light(
            themeData:
            ThemeData(useMaterial3: true, brightness: Brightness.light)));
      }
      if (event is DarkThemeEvent) {
        isLight = false;
        emit(Dark(
            themeData:
            ThemeData(useMaterial3: true, brightness: Brightness.dark)));
      }
    });
  }
}