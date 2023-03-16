import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/bloc/theme bloc/theme_bloc.dart';
import 'lawyer.dart';

class Account extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حسابى',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Card(
                  color: context.read<ThemeBloc>().isLight
                      ? null
                      : Color(0xff191919),
                  child: Image.asset(
                    'assets/slideshow1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Card(
                    color: context.read<ThemeBloc>().isLight
                        ? null
                        : Color(0xff191919),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'اسم الحساب\n'+
                              user.email!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: context.read<ThemeBloc>().isLight
                                  ? Colors.black
                                  : Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('22',
                                style: TextStyle(
                                  color: context.read<ThemeBloc>().isLight
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Text(':',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('السن',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('8/8/2001',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(':',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('تاريخ الميلاد',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ذكر',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(':',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('الجنس',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('فارغ',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(':',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('العنوان',
                                style: TextStyle(
                                    color: context.read<ThemeBloc>().isLight
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox( height: 10),


                          ],
                        ),
                        MaterialButton(
                          onPressed:()
                          {FirebaseAuth.instance.signOut();},
                          color: Color(0xffF0CC41),
                          child: Text('تسجيل الخروج'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),



          Positioned(
            left: 147,
            top: 134,
            child: CircleAvatar(
              radius: 56,
              backgroundColor: context.read<ThemeBloc>().isLight
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          Positioned(
            left: 148,
            top: 135,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 55,
                  child: Image.asset(
                    'assets/ask.png',
                    height: 50,
                  ),
                  backgroundColor: Color(0xffF0CC41),
                ),
                SizedBox(
                  height: 5,
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
