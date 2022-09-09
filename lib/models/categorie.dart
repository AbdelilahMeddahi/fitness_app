import 'dart:ui';
import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Categorie {
  Categorie({
    this.categorieName = '',
    this.categorieImage = '',
    this.color = Colors.blue,
  });

  String categorieName;
  String categorieImage;
  Color color;
}

var categorieList = [
  Categorie(
    categorieName: "Yoga",
    categorieImage:"assets/yoga2.png",
    color:darkblueColor,
  ),
  Categorie(categorieName: "Strength\ntraining",
    categorieImage:"assets/yoga.png",
    color:darkpinkColor,
  ),
  Categorie(categorieName: "Hiit",
    categorieImage:"assets/yoga6.png",
    color:darkvioletColor,
  ),
  Categorie(categorieName: "Dance\ncardio",
    categorieImage:"assets/yoga5.png",
    color:cyanColor,
  ),
];