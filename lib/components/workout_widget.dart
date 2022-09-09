import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class WorkoutWidget extends StatelessWidget {
  final String workoutName;
  final String workoutDescription;
  final String workoutDuration;
  final String workoutCalories;
  final String workoutImage;
  final Color color;

  const WorkoutWidget(
      {Key? key,
      required this.workoutName,
      required this.workoutDescription,
      required this.workoutDuration,
      required this.workoutCalories,
      required this.workoutImage,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height-56)*0.2482,
      width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width*0.153,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -10,
            right: -20,
            child: Container(
              child: Image.asset(workoutImage),
              height: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height-56)*0.27582,
              width: MediaQuery.of(context).size.width*0.55,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height-56)*0.0206,
                ),
                Text(
                  workoutName,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600,),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height-56)*0.03034,
                ),
                Text(
                  workoutDescription,
                  style: TextStyle(fontSize: 15, color: Colors.grey[600],fontWeight: FontWeight.w400,),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height-56)*0.03447,
                ),
                Row(
                  children: [
                    Container(
                      height: (MediaQuery.of(context).size.height-56)*0.0482,
                      width: MediaQuery.of(context).size.width*0.2291,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Ionicons.play,size: 20,),
                          Text(
                            workoutDuration,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height-56)*0.0482,
                      width: MediaQuery.of(context).size.width*0.2546,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/icons/fire.png",
                              height: MediaQuery.of(context).size.width*0.0509,
                              width: MediaQuery.of(context).size.width*0.0509,
                            ),

                            Text(
                              workoutCalories,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
