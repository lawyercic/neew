import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawer/features/presentation/screens/settings.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../controller/bloc/theme bloc/theme_bloc.dart';
import 'account.dart';
import 'lawyer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int i = 1;

  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          children: [Account(), Lawyer(), Settings()],
          index: i,
        ),
        bottomNavigationBar: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            if (state is Light) {
              return Container(
                child: SalomonBottomBar(
                  currentIndex: i,
                  onTap: (index) => setState(() => i = index),
                  items: [
                    SalomonBottomBarItem(
                      icon: Icon(
                        Icons.account_circle,
                        color: context.read<ThemeBloc>().isLight
                            ? Colors.black
                            : Colors.white,
                      ),
                      title: Text(
                        "حسابي",
                        style: TextStyle(
                            color: context.read<ThemeBloc>().isLight
                                ? Colors.black
                                : Colors.white),
                      ),
                      selectedColor: Color(0xffF0CC41),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.home,
                          color: context.read<ThemeBloc>().isLight
                              ? Colors.black
                              : Colors.white),
                      title: Text("الرئيسيه",
                          style: TextStyle(
                              color: context.read<ThemeBloc>().isLight
                                  ? Colors.black
                                  : Colors.white)),
                      selectedColor: Color(0xffF0CC41),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.settings,
                          color: context.read<ThemeBloc>().isLight
                              ? Colors.black
                              : Colors.white),
                      title: Text("الاعدادات",
                          style: TextStyle(
                              color: context.read<ThemeBloc>().isLight
                                  ? Colors.black
                                  : Colors.white)),
                      selectedColor: Color(0xffF0CC41),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                color: Color(0xff191919),
                child: SalomonBottomBar(
                  currentIndex: i,
                  onTap: (index) => setState(() => i = index),
                  items: [
                    SalomonBottomBarItem(
                      icon: Icon(
                        Icons.account_circle,
                        color: context.read<ThemeBloc>().isLight
                            ? Colors.black
                            : Colors.white,
                      ),
                      title: Text(
                        "حسابي",
                        style: TextStyle(
                            color: context.read<ThemeBloc>().isLight
                                ? Colors.black
                                : Colors.white),
                      ),
                      selectedColor: Color(0xffF0CC41),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.home,
                          color: context.read<ThemeBloc>().isLight
                              ? Colors.black
                              : Colors.white),
                      title: Text("الرئيسيه",
                          style: TextStyle(
                              color: context.read<ThemeBloc>().isLight
                                  ? Colors.black
                                  : Colors.white)),
                      selectedColor: Color(0xffF0CC41),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.settings,
                          color: context.read<ThemeBloc>().isLight
                              ? Colors.black
                              : Colors.white),
                      title: Text("الاعدادات",
                          style: TextStyle(
                              color: context.read<ThemeBloc>().isLight
                                  ? Colors.black
                                  : Colors.white)),
                      selectedColor: Color(0xffF0CC41),
                    ),
                  ],
                ),
              );
            }
          },
        ));
  }
}
