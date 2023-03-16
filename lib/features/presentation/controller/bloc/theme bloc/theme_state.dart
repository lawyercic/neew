part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class Light extends ThemeState {
  ThemeData themeData;

  Light({required this.themeData});
}

class Dark extends ThemeState {
  ThemeData themeData;

  Dark({required this.themeData});
}
