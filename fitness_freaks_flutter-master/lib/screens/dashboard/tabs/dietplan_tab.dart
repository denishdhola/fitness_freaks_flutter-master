import 'package:fitness_freaks/widgets/navigation/app_bar_view_diet_plan.dart';
import 'package:flutter/material.dart';
import 'package:fitness_freaks/configs/app_colors.dart';

class DietplanTab extends StatefulWidget {
  const DietplanTab({super.key});

  @override
  State<DietplanTab> createState() => _DietplanTabState();
}

class _DietplanTabState extends State<DietplanTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarViewDietPlan(),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width - 20,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/pics/30days.jpg'),
          ),
          Expanded(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width - 20,
                child: const MyGridView()),
          ),
        ],
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30, // 3 rows, 10 columns = 30 items
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        // You can replace this with your own widget
        return Container(
          margin: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 69, 237), // Darker shade of blue
                Color.fromARGB(255, 68, 68, 238)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 8,
                offset: Offset(3, 3),
                spreadRadius: -1,
                color: Colors.grey,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Day ${index + 1}',
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        );
      },
    );
  }
}
