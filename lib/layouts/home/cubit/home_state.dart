part of 'home_cubit.dart';

@immutable
abstract class HomeStates {}

class HomeInitial extends HomeStates {}


class GetDataLoadingState extends HomeStates {}
class GetDataSuccessState extends HomeStates {}
class GetDataErrorState extends HomeStates {}


