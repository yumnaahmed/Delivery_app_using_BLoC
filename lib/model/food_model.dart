class FoodModel {
  final int id;
  final String foodName;
  final int foodCount;
  final String imageUrl;
  FoodModel({
    required this.id,
    required this.foodName,
    required this.foodCount,
    required this.imageUrl,
  });
}

final List<FoodModel> foodDataList = [
  FoodModel(
    id: 1,
    foodName: "Burgers",
    foodCount: 3,
    imageUrl: "assets/beef_burger.jpg",
  ),
  FoodModel(
    id: 2,
    foodName: "Pizza",
    foodCount: 3,
    imageUrl: "assets/chicken_pizza.jpg",
  ),
  FoodModel(
    id: 3,
    foodName: "Streaks",
    foodCount: 2,
    imageUrl: "assets/chicken_steak.jpg",
  ),
  FoodModel(
    id: 4,
    foodName: "Beverages",
    foodCount: 5,
    imageUrl: "assets/coke.jpg",
  ),
];
