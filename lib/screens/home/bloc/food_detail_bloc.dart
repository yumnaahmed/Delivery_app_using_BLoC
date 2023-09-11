import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:test_bloc_and_firebase/model/dish_model.dart';

part 'food_detail_event.dart';

part 'food_detail_state.dart';

class FoodDetailBloc extends Bloc<FoodDetailEvent, FoodDetailState> {
  FoodDetailBloc() : super(FoodDetailInitial()) {
    on<FoodDetailInitialEvent>(foodDetailInitialEvent);
  }

  FutureOr<List<DishModel>> foodDetailInitialEvent(
      FoodDetailInitialEvent event, Emitter<FoodDetailState> emit) {
    emit(FoodDetailLoadingState());
    List<DishModel> foodDetailDataList = [];
    var id = event.foodId;
    for (int i = 0; i < dishDataList.length; i++) {
      if (dishDataList[i].foodId.toString().contains(id.toString())) {
        foodDetailDataList.add(dishDataList[i]);
      }
    }
    print(foodDetailDataList);
    emit(FoodDetailSuccessState(foodDetailList: foodDetailDataList));
    return foodDetailDataList;
  }
}
