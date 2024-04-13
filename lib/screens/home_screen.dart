import 'package:figmaapp/constant.dart';
import 'package:figmaapp/utils/components/chart_container.dart';
import 'package:figmaapp/utils/components/side_menu.dart';
import 'package:figmaapp/utils/widgets/activity_header.dart';
import 'package:figmaapp/utils/widgets/bar_chart.dart';
import 'package:figmaapp/utils/widgets/courses_grid.dart';
import 'package:figmaapp/utils/widgets/statistics_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hello, ",
                  style: TextStyle(
                      color: kDarkBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nTya Vinandita",
                      style: TextStyle(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Exam",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CourseGrid(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Statistics",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const StatisticsGrid(),
              const SizedBox(
                height: 15,
              ),
              const ActivityHeader(),
              const ChartContainer(chart: BarChartContent())
            ],
          ),
        ),
      ),
    );
  }
}
