
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/network/end_points.dart';
import 'package:weather/network/models/weather_model.dart';
import '../../../network/dio_helper.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);

  WeatherModel? weatherModel;
  void getWeatherData(){
    emit(GetDataLoadingState());
    DioHelper.getData(url: WEATHER,query: {
      'appid' :'6c8fe3330b6fcc0cee028084fc8f0f54',
      'q' :'cairo'
    }).then((value) {
      weatherModel = WeatherModel.fromJson(value.data);
      print(weatherModel);
      emit(GetDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDataErrorState());
    });

  }


}
