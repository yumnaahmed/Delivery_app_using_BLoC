part of 'food_bloc.dart';

@immutable
abstract class FoodEvent {}

class FoodInitialEvent extends FoodEvent {}


class ItemClickedDetailedNextPageNavigation extends FoodEvent{}