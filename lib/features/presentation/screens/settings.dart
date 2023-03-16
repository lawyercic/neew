import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/bloc/theme bloc/theme_bloc.dart';
import 'lawyer.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الاعدادات',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'غير مفعل',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Switch(
                    activeColor: Color(0xffF0CC41),
                    value: context.read<ThemeBloc>().isSwitchedMode,
                    onChanged: (value) {
                      context.read<ThemeBloc>().isSwitchedMode = value;
                      if (context.read<ThemeBloc>().isSwitchedMode) {
                        context.read<ThemeBloc>()..add(DarkThemeEvent());
                        setState(() {});
                      } else {
                        context.read<ThemeBloc>()..add(LightThemeEvent());
                        setState(() {});
                      }
                    }),
                SizedBox(
                  width: 5,
                ),
                Text('مفعل',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Spacer(
                  flex: 1,
                ),
                Text(':',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  width: 5,
                ),
                Text('الوضع الليلي',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('عربى',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  width: 5,
                ),
                Switch(
                    activeColor: Color(0xffF0CC41),
                    value: context.read<ThemeBloc>().isSwitchedLanguage,
                    onChanged: (value) {
                      context.read<ThemeBloc>().isSwitchedLanguage;
                      if (context.read<ThemeBloc>().isSwitchedLanguage) {
                      } else {}
                    }),
                SizedBox(
                  width: 5,
                ),
                Text('انجليزى',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Spacer(
                  flex: 1,
                ),
                Text(':',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  width: 5,
                ),
                Text('اللغه',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
