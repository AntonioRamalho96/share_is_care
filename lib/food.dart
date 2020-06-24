import 'package:flutter/material.dart';

class Food{
  String name;
  String briefDescription = "";
  String fullDescription = "";
  String ingredients = "";
  String pathToFigure = "";
  String type = "";
  int totalDoses=0;
  int availableDoses=0;
  int size= 3;

  Food(String name, int totalDoses,
      [String briefDescription = "no description",
    String type = "", String doseCalories = "", int size=3] ){
    this.name=name;
    this.totalDoses=totalDoses;
    this.availableDoses=totalDoses;
    this.briefDescription=briefDescription;
    this.type="";
    this.size=size;
  }


}

class FoodSize{
  static List <String> English = ["Very small", "Small", "Medium", "Large", "Extra Large"];
  static List <String> Portuguese = ["Muito pequeno", "Pequeno", "Médio", "Grande", "Muito Grande"];

  static String makeReadable(int size, [String language = "en"]){
    assert(language=="en" || language=="pt");

    switch(language){
      case("en"):{
        return FoodSize.English[size];
      }
      break;
      case("pt"):{
        return FoodSize.Portuguese[size];
      }
      break;
      default:{
        return "?";
      }
    }
  }
}