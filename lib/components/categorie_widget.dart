import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CategorieWidget extends StatelessWidget {
  final String categorieName;
  final String categorieImage;
  final Color color;

  const CategorieWidget(
      {Key? key,
        required this.categorieName,
        required this.categorieImage,
        required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height-56)*0.3034,
      width: (MediaQuery.of(context).size.width - 60)/2.5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: Image.asset(categorieImage),
            height: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height-56)*0.3034,
            width: (MediaQuery.of(context).size.width - 60)/2.5,
          ),
          Text(categorieName,style: TextStyle(color: whiteColor,fontSize: 21,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}
