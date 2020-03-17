import 'package:flutter/cupertino.dart';

FoodItemList foodItemList = FoodItemList(foodItems: [
  FoodItem(
      id: 1,
      title: "Beach BBQ Burger",
      hotel: "Las Vegas Hotel",
      price: 14.47,
      imageUrl:
          "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F4047101_4thof_july_burger_watermeloncocktail.jpg%3Fitok%3DUp7wF3f8"),
  FoodItem(
      id: 2,
      title: "Beach BBQ Burger",
      hotel: "Las Vegas Hotel",
      price: 14.47,
      imageUrl:
      "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F4047101_4thof_july_burger_watermeloncocktail.jpg%3Fitok%3DUp7wF3f8"),
  FoodItem(
      id: 3,
      title: "Beach BBQ Burger",
      hotel: "Las Vegas Hotel",
      price: 14.47,
      imageUrl:
      "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F4047101_4thof_july_burger_watermeloncocktail.jpg%3Fitok%3DUp7wF3f8"),
  FoodItem(
      id: 4,
      title: "Beach BBQ Burger",
      hotel: "Las Vegas Hotel",
      price: 14.47,
      imageUrl:
      "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F4047101_4thof_july_burger_watermeloncocktail.jpg%3Fitok%3DUp7wF3f8"),


]);

class FoodItemList {
  List<FoodItem> foodItems;

  FoodItemList({@required this.foodItems});
}

class FoodItem {
  int id, quantity;
  double price;
  String title, hotel, imageUrl;

  FoodItem(
      {@required this.id,
      @required this.title,
      @required this.hotel,
      @required this.price,
      @required this.imageUrl,
      this.quantity = 1});

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}
