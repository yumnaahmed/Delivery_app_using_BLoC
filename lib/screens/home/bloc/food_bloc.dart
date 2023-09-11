import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'food_event.dart';

part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial()) {
    on<ItemClickedDetailedNextPageNavigation>(
        itemClickedDetailedNextPageNavigation);
  }

  FutureOr<void> itemClickedDetailedNextPageNavigation(
      ItemClickedDetailedNextPageNavigation event, Emitter<FoodState> emit) {
    emit(ItemClickedDetailedNextPageNavigationActionState());
  }
}
