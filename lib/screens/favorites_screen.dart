import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_storage/get_storage.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {
  late final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  // late SharedPreferences prefs;
  // final favorites = GetStorage();
  // late List<Meal> list;
  // late String jsonData;

  // late List<String> encodedList;
  // late String favorites;
  // late List<Meal> decodedList;

  // void saveFavorites() async {
  //   prefs = await SharedPreferences.getInstance();
  //   encodedList = widget.favoriteMeals.map((item) => json.encode(item.toMap())).toList();
  //   // encodedList = widget.favoriteMeals
  //   //     .map((item) => json.encode({
  //   //           'id': item.id,
  //   //           'title': item.title,
  //   //           'imageUrl': item.imageUrl,
  //   //           'duration': item.duration,
  //   //           //'affordability': item.affordability,
  //   //           //'complexity': item.complexity,
  //   //         }))
  //   //     .toList();
  //   // final String favorites = Meal.encode(widget.favoriteMeals);
  //   await prefs.setStringList('favorites', encodedList);
  //   print(encodedList);
  // }

  // void loadFavorites() async {
  //   prefs = await SharedPreferences.getInstance();
  //   // List<Meal> favorites = await prefs.getStringList('favorites')!.cast<Meal>();
  //   // List<Meal> list = json.decode('favorites');
  //   // favorites = await prefs.getStringList('favorites').toString();
  //   favorites = (await prefs.getString('favorites'))!;
  //   decodedList = Meal.decode(favorites);
  //   //return favorites;
  // }

  List<Meal> meals = [];

  @override
  void initState() {
    // TODO: implement initState
    meals = widget.favoriteMeals;
    super.initState();
    //favorites.write('favorites', widget.favoriteMeals);
    //list = favorites.read('favorites');
    //json = jsonEncode(list);
    // print(list);
    // saveFavorites();
    // loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    if (meals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: meals[index].id,
            title: meals[index].title,
            imageUrl: meals[index].imageUrl,
            duration: meals[index].duration,
            affordability: meals[index].affordability,
            complexity: meals[index].complexity,
          );
        },
        itemCount: meals.length,
      );
    }
  }
}
