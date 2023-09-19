import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/components/colors.dart';
import 'package:weather/components/navigation_const.dart';
import 'package:weather/components/textfield.dart';
import 'package:weather/layouts/home/cubit/home_cubit.dart';
import 'package:intl/intl.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getWeatherData(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit =HomeCubit.get(context);
          DateTime now = DateTime.now();
          String formattedDate = DateFormat('yy-MM-dd ').format(now);
          String time = DateFormat('HH:mm').format(now);
          int tempInCelsius = (cubit.weatherModel!.main!.temp! - 273.15).round();
          int tempMinInCelsius = (cubit.weatherModel!.main!.tempMin! - 273.15).round();
          int tempMaxInCelsius = (cubit.weatherModel!.main!.tempMax! - 273.15).round();




          if(cubit.weatherModel ==null)
            {
              return  const Center(child: CircularProgressIndicator());
            }
          else{
            return Scaffold(
              body: Column(children: [
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/R.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r)),
                  ),
                  child: Stack(
                    children: [
                      AppBar(
                        leading: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.menu)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                        child: DefaultTextField(
                            hintText: 'Search',
                            suffixIcon:
                            const Icon(Icons.search, color: whiteColor),
                            controller: searchController,
                            validator: (value) {
                              return null;
                            }),
                      ),
                      Align(
                        alignment: const Alignment(0.0, 1.7),
                        child: SizedBox(
                          height: 10,
                          width: 10,
                          child: OverflowBox(
                            maxWidth: MediaQuery.of(context).size.width,
                            maxHeight: MediaQuery.of(context).size.height,
                            minHeight: 0,
                            minWidth: 0,
                            child: Stack(
                              children: [
                                Container(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                                  width: double.infinity,
                                  height: 220.h,
                                  child: Card(
                                    color: whiteColor,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.r),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text(
                                            '${cubit.weatherModel!.name}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 35.sp,
                                            ),
                                          )
                                        ),

                                        Center(
                                          child: Text(
                                            formattedDate,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.sp,
                                              color: greyColor,
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            time,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.sp,
                                              color: greyColor,
                                            ),
                                          ),
                                        ),

                                        const MyDivider(),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                              const EdgeInsets.only(left: 30),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    '${cubit.weatherModel!.weather![0].description}',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 15.sp,
                                                      color: greyColor,
                                                    ),
                                                  ),
                                                  SizedBox(height: 20.h),
                                                  Text(

                                                    '$tempInCelsius°C',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 60.sp,
                                                      color: Colors.black,
                                                    ),
                                                  ),

                                                  Text(
                                                    'min:$tempMinInCelsius°C/max:$tempMaxInCelsius°C',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 15.sp,
                                                      color: greyColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 35),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 97.h,
                                                    width: 97.w,
                                                    decoration: const BoxDecoration(),
                                                  ),
                                                  Text(
                                                    'wind: ${cubit.weatherModel!.wind!.speed}m/s',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 15.sp,
                                                      color: greyColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );

          }
        },
      ),
    );
  }
}
