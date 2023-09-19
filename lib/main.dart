import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/layouts/home/home_screen.dart';
import 'package:weather/layouts/test.dart';
import 'package:weather/network/dio_helper.dart';

import 'components/colors.dart';

void main() {
  runApp(const MyApp());
  DioHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    selectedItemColor: blueColor,
                    unselectedItemColor: Colors.grey,
                  ),
                  elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: blueColor)),
                  appBarTheme: const AppBarTheme(
                    color: Colors.transparent,
                    elevation: 0,

                  ),
                  scaffoldBackgroundColor: whiteColor),
              home: HomeScreen()
          );
        });
  }
}
