class DishModel {
  final int foodId;
  final int dishId;
  final String dishName;
  final double price;
  final String dishIngredient;
  final String imageUrl;

  DishModel(
      {required this.foodId,
      required this.dishId,
      required this.dishName,
      required this.price,
      required this.dishIngredient,
      required this.imageUrl});
}

final List<DishModel> dishDataList = [
  DishModel(
    foodId: 1,
    dishId: 1,
    dishName: "Beef Burger",
    price: 500,
    dishIngredient: "Meat,Tomates",
    imageUrl: "assets/beef_burger.jpg",
  ),
  DishModel(
    foodId: 1,
    dishId: 2,
    dishName: "Chicken Burger",
    price: 400,
    dishIngredient: "Chicken,Tomates",
    imageUrl: "assets/chicken_burger.jpg",
  ),
  DishModel(
    foodId: 1,
    dishId: 3,
    dishName: "Fish Burger",
    price: 800,
    dishIngredient: "Fish,Tomates",
    imageUrl: "assets/fish_burger.jpg",
  ),
  DishModel(
    foodId: 2,
    dishId: 4,
    dishName: "Chicken Pizza",
    price: 800,
    dishIngredient: "Chicken,Tomates",
    imageUrl: "assets/chicken_pizza.jpg",
  ),
  DishModel(
    foodId: 2,
    dishId: 5,
    dishName: "Beef Pizza",
    price: 800,
    dishIngredient: "Beef,Tomates",
    imageUrl: "assets/beef_pizza.jpg",
  ),
  DishModel(
    foodId: 2,
    dishId: 6,
    dishName: "Chicken Tikka Pizza",
    price: 800,
    dishIngredient: "Chicken,Tomates",
    imageUrl: "assets/chicken_pizza.jpg",
  ),
  DishModel(
    foodId: 3,
    dishId: 7,
    dishName: "Chicken Steak",
    price: 800,
    dishIngredient: "Chicken,Tomates",
    imageUrl: "assets/chicken_steak.jpg",
  ),
  DishModel(
    foodId: 3,
    dishId: 8,
    dishName: "Beef Steak",
    price: 800,
    dishIngredient: "Beef,Tomates",
    imageUrl: "assets/beef_steak.jpg",
  ),
  DishModel(
    foodId: 4,
    dishId: 9,
    dishName: "Pepsi",
    price: 800,
    dishIngredient: "",
    imageUrl: "assets/pepsi.jpg",
  ),
  DishModel(
    foodId: 4,
    dishId: 10,
    dishName: "Fanta",
    price: 800,
    dishIngredient: "",
    imageUrl: "assets/coke.jpg",
  ),
  DishModel(
    foodId: 4,
    dishId: 11,
    dishName: "Coke",
    price: 800,
    dishIngredient: "",
    imageUrl: "assets/coke.jpg",
  ),
  DishModel(
    foodId: 4,
    dishId: 12,
    dishName: "7up",
    price: 800,
    dishIngredient: "",
    imageUrl: "assets/7up.jpg",
  ),
  DishModel(
    foodId: 4,
    dishId: 13,
    dishName: "Sprite",
    price: 800,
    dishIngredient: "",
    imageUrl: "assets/7up.jpg",
  ),
];
