part of 'food_detail_bloc.dart';

abstract class FoodDetailState {}

class FoodDetailInitial extends FoodDetailState {}

class FoodDetailLoadingState extends FoodDetailState {}

class FoodDetailSuccessState extends FoodDetailState {
  final List<DishModel> foodDetailList;

  FoodDetailSuccessState({required this.foodDetailList});
}

class FoodDetailErrorState extends FoodDetailState {}
