import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/layouts/home/cubit/home_cubit.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          var cubit =HomeCubit.get(context);
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  cubit.getWeatherData();
                },
                child: Text('start'),
              ),
            ),
          );
        },
      ),
    );
  }
}
