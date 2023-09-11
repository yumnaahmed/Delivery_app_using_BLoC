part of 'food_detail_bloc.dart';

abstract class FoodDetailEvent {}

class FoodDetailInitialEvent extends FoodDetailEvent {
  final int foodId;

  FoodDetailInitialEvent({required this.foodId});
}
