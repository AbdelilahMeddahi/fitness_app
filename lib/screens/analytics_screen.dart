import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:percent_indicator/percent_indicator.dart';


class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.all((MediaQuery.of(context).size.height - 56) * 0.036),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Image.asset("assets/icons/back.png",height: 18),
                const Text(
                  "Analytics",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                ),
                Image.asset("assets/icons/notification.png"),
              ],
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height - 56) * 0.036,
            ),
            const Text(
              "Today",
              style: TextStyle(
                  color: pinkColor, fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height - 56) * 0.007,
            ),
            const Text(
              "Mon 26 Apr",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.width*23/MediaQuery.of(context).size.width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width*44/MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width*120/MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Calories",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Ionicons.caret_down_outline,
                        color: pinkColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width*44/MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width*100/MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Ionicons.caret_down_outline,
                        color: pinkColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width*20/MediaQuery.of(context).size.width,
            ),
            Center(
              child: CircularPercentIndicator(
                animationDuration: 1000,
                backgroundColor: const Color(0xfff3f3f3),
                animation: true,
                radius: MediaQuery.of(context).size.width*140/MediaQuery.of(context).size.width,
                lineWidth: MediaQuery.of(context).size.width*18/MediaQuery.of(context).size.width,
                percent: 0.69,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Active Calories",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width*10/MediaQuery.of(context).size.width,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:  const [
                        Text(
                          "435",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 45),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cal",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                linearGradient: const LinearGradient(
                  begin: Alignment(2, 0),
                  end: Alignment(0, 2),
                  colors: <Color>[
                    pinkColor,
                    pinkColor,
                    blueColor,
                    Color(0xffb8ddff),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                ),
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width*30/MediaQuery.of(context).size.width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 24 * 3) / 2,
                  height: (MediaQuery.of(context).size.width - 24 * 3) / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffaeacf9),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Training time",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width*30/MediaQuery.of(context).size.width,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "25",
                            style: TextStyle(color: whiteColor, fontSize: 28),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "min",
                            style: TextStyle(color: whiteColor, fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width*15/MediaQuery.of(context).size.width,
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        alignment: MainAxisAlignment.center,
                        barRadius: const Radius.circular(25),
                        width:
                            (MediaQuery.of(context).size.width - 24 * 3) / 2 -
                                20,
                        lineHeight: 8.0,
                        percent: 0.36,
                        backgroundColor: Colors.white38,
                        progressColor: const Color(0xff68daff),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 24 * 3) / 2,
                  height: (MediaQuery.of(context).size.width - 24 * 3) / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff99d8ef),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Steps",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "8",
                            style: TextStyle(color: whiteColor, fontSize: 28),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "670",
                            style: TextStyle(color: whiteColor, fontSize: 28),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width*15/MediaQuery.of(context).size.width,
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        alignment: MainAxisAlignment.center,
                        barRadius: const Radius.circular(25),
                        width:
                            (MediaQuery.of(context).size.width - 24 * 3) / 2 -
                                20,
                        lineHeight: 8.0,
                        percent: 0.56,
                        backgroundColor: Colors.white38,
                        progressColor: pinkColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
