import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_and_firebase/model/dish_model.dart';
import 'package:test_bloc_and_firebase/model/food_model.dart';
import 'package:test_bloc_and_firebase/screens/home/bloc/food_detail_bloc.dart';
import 'package:test_bloc_and_firebase/utils/styles.dart';

class FoodDetailPage extends StatefulWidget {
  FoodModel foodModel;

  FoodDetailPage({Key? key, required this.foodModel}) : super(key: key);

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  FoodDetailBloc foodDetailBloc = FoodDetailBloc();
  List<DishModel> filterDishList = [];
  @override
  void initState() {
    foodDetailBloc.add(FoodDetailInitialEvent(foodId: widget.foodModel.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.foodModel.foodName),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: BlocConsumer<FoodDetailBloc, FoodDetailState>(
        bloc: foodDetailBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case FoodDetailLoadingState:
              return Center(
                child: CircularProgressIndicator(),
              );
            case FoodDetailSuccessState:
              final succesState = state as FoodDetailSuccessState;
              print(succesState.foodDetailList.length);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(widget.foodModel.foodCount.toString() + " Results \n Found",style: Style.getBoldFont(35),),
                    Expanded(child: 
                    GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20), itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text("succesState"),
                      );
                    },
                    itemCount: succesState.foodDetailList.length,)),
                  ],
                ),
              );
            default:
              return SizedBox();
          }
        },
      ),
    );
  }
}
