import 'dart:convert';

import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': this.id,
  //     'title': this.title,
  //     'imageUrl': this.imageUrl,
  //     'duration': this.duration,
  //     'affordability': this.affordability,
  //     'complexity': this.complexity,
  //   };
  // }

  // static Map<String, dynamic> toMap(Meal meal) {
  //   return {
  //     'id': meal.id,
  //     'title': meal.title,
  //     'imageUrl': meal.imageUrl,
  //     'duration': meal.duration,
  //     'affordability': meal.affordability,
  //     'complexity': meal.complexity,
  //   };
  // }

  // factory Meal.fromJson(Map<String, dynamic> jsonData) {
  //   return Meal(
  //     id: jsonData['id'],
  //     title: jsonData['title'],
  //     imageUrl: jsonData['imageUrl'],
  //     duration: jsonData['duration'],
  //     affordability: jsonData['affordability'],
  //     complexity: jsonData['complexity'],
  //     ingredients: jsonData['ingredients'],
  //     isLactoseFree: jsonData['isLactoseFree'],
  //     steps: jsonData['steps'],
  //     categories: jsonData['categories'],
  //     isVegetarian: jsonData['isVegetarian'],
  //     isGlutenFree: jsonData['isGlutenFree'],
  //     isVegan: jsonData['isVegan'],
  //   );
  // }

  // static String encode(List<Meal> meal) =>
  //     json.encode(meal.map<Map<String, dynamic>>((meal) => Meal.toMap(meal)).toList());
  //
  // static List<Meal> decode(String meal) =>
  //     (json.decode(meal) as List<dynamic>).map<Meal>((item) => Meal.fromJson(item)).toList();
}
