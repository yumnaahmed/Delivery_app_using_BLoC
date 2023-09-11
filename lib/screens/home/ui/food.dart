import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_and_firebase/components/custom_app_bar.dart';
import 'package:test_bloc_and_firebase/model/food_model.dart';
import 'package:test_bloc_and_firebase/screens/home/bloc/food_bloc.dart';
import 'package:test_bloc_and_firebase/screens/home/ui/food_detail_page.dart';
import 'package:test_bloc_and_firebase/utils/static_data.dart';
import 'package:test_bloc_and_firebase/utils/styles.dart';

class FoodScreen extends StatefulWidget {
  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  var currentIndex = 0;
  FoodBloc foodBloc = FoodBloc();
  final pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBarWithoutLeading(
          title: 'FOODS',
          rightIcon1: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            child: Image.asset("assets/user.png"),
          ),
        ),
        preferredSize: Size.fromHeight(60),
      ),

      // AppBar(
      //   title: Text('Foods'),
      //   actions: [
      //     Switch(
      //       value: context.read<ThemeToggleBloc>().state == ThemeMode.dark,
      //       onChanged: (value) {
      //         context
      //             .read<ThemeToggleBloc>()
      //             .add(ThemeChangeEvent(isDark: value));
      //       },
      //     ),
      //     Text(
      //       context.watch<ThemeToggleBloc>().state == ThemeMode.dark
      //           ? 'Dark '
      //           : 'Light ',
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ],
      // ),
      body: BlocConsumer<FoodBloc, FoodState>(
        bloc: foodBloc,
        buildWhen: (previous, current) => current is! FoodActionState,
        listenWhen: (previous, current) => current is FoodActionState,
        listener: (context, state) {
          if (state is ItemClickedDetailedNextPageNavigationActionState) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailPage(foodModel: foodDataList[currentIndex]),
                ));
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  StaticData.order_your_favourite_food,
                  style: Style.getBoldFont(35),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: pageViewItemWidget(),
              ),
              SizedBox(
                height: 20,
              ),
              cartWidget(),
              SizedBox(
                height: 20,
              )
            ],
          );
        },
      ),
    );
  }

  Widget cartWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15, left: 25),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Text("0", style: Style.getSemiBoldFont(20)),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "0 items",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pageViewItemWidget() {
    return PageView.builder(
        allowImplicitScrolling: true,
        physics: BouncingScrollPhysics(),
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              foodBloc.add(ItemClickedDetailedNextPageNavigation());
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      foodDataList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.medium),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      foodDataList[index].foodName,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      foodDataList[index].foodCount.toString() + " Items",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: foodDataList.length);
  }
}
