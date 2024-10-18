import 'package:fitness_freaks/export.dart';
import 'package:flutter/material.dart';

class HomeDetails2 extends StatefulWidget {
  const HomeDetails2({super.key});

  @override
  State<HomeDetails2> createState() => _TwoMinutesWorkoutState();
}

class _TwoMinutesWorkoutState extends State<HomeDetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.chevron_left_sharp,
                  color: AppColors.blackColor,
                  size: 30,
                ),
              ),
              expandedHeight: 200,
              backgroundColor: AppColors.backgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                title: const SemiBoldTextView(
                  data: "2 min leg workout",
                  fontSize: 18,
                  textColor: AppColors.blackColor,
                ),
                background: Image.asset(
                  "assets/image/stretching.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) => Container(
                  // height: 1000,
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(43, 117, 54, 211),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "focus on your thights fat the best workout help tighten your legs and butt get you bikini redy !",
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          BoldTextView(data: "EXERCISES", fontSize: 18, textColor: AppColors.primaryColor),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/image/stretching.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SemiBoldTextView(
                                      data: "PLANK LEG UP", fontSize: 15, textColor: AppColors.primaryColor),
                                  SemiBoldTextView(data: "30 seconds", fontSize: 15, textColor: AppColors.blackColor)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          BoldTextView(
                            data: "TUTORIAL",
                            textColor: AppColors.primaryColor,
                            fontSize: 22,
                          ),
                        ],
                      ),
                      Container(
                        height: 250,
                        width: double.maxFinite,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
