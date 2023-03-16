part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class LightThemeEvent extends ThemeEvent {}

class DarkThemeEvent extends ThemeEvent {}
