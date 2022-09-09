import 'package:fitness_app/components/categorie_widget.dart';
import 'package:fitness_app/models/categorie.dart';
import 'package:fitness_app/models/workout.dart';
import 'package:fitness_app/components/workout_widget.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height-56)*0.036),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons/sort.png"),
                Text(
                  "Browse",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                ),
                Image.asset("assets/icons/notification.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: (MediaQuery.of(context).size.height-56)*0.07,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  prefixIcon: Icon(
                    Ionicons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Ionicons.reorder_two_outline,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height-56)*0.036),
            child: Row(children: [
              Text(
                "Top Workouts",
                style: TextStyle(fontSize: 22, color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/icons/girl-power.png",
                width: 30,
              ),
            ]),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height-56)*0.29,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: topWorkouts.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                    ),
                    child: WorkoutWidget(
                      workoutDuration: topWorkouts[index].workoutDuration,
                      workoutDescription: topWorkouts[index].workoutDescription,
                      workoutImage: topWorkouts[index].workoutImage,
                      color: topWorkouts[index].color,
                      workoutName: topWorkouts[index].workoutName,
                      workoutCalories: topWorkouts[index].workoutCalories,
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height-56)*0.0344),
            child: Row(children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 22, color: Colors.grey),
              ),
            ]),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height-56)*0.243,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categorieList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                    ),
                    child: CategorieWidget(
                      categorieImage: categorieList[index].categorieImage,
                      color: categorieList[index].color,
                      categorieName: categorieList[index].categorieName,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
