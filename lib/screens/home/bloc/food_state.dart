part of 'food_bloc.dart';

@immutable
abstract class FoodState {}
abstract class FoodActionState extends FoodState {}

class FoodInitial extends FoodState {}

class FoodSuccessState extends FoodState{}
class FoodLoadingState extends FoodState{}
class FoodErrorState extends FoodState{}

class ItemClickedDetailedNextPageNavigationActionState extends FoodActionState{}


