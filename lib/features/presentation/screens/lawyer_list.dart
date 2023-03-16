import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/bloc/theme bloc/theme_bloc.dart';
import 'lawyer.dart';

class LawyerList extends StatelessWidget {
  LawyerList({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, i) => Column(
            children: [
              Card(
                color: context.read<ThemeBloc>().isLight
                    ? null
                    : Color(0xff191919),
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      color: context.read<ThemeBloc>().isLight
                          ? Colors.black
                          : Colors.white),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffF0CC41),
                    radius: 40,
                    child: Image.asset(
                      'assets/ask.png',
                      height: 38,
                    ),
                  ),
                  title: Text(
                    'اسم المحامي',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: context.read<ThemeBloc>().isLight
                            ? Colors.black
                            : Colors.white),
                  ),
                  subtitle: Text(
                    'التخصص',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: context.read<ThemeBloc>().isLight
                            ? Colors.black
                            : Colors.white),
                  ),
                ),
              )
            ],
          ),
          separatorBuilder: (context, i) {
            return Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
