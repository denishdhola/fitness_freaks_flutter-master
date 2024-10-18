import 'package:fitness_freaks/export.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/home%20tab/home_details_1.dart';

class HomeLists extends StatefulWidget {
  const HomeLists({super.key});

  @override
  State<HomeLists> createState() => _BodyFocusListsState();
}

class _BodyFocusListsState extends State<HomeLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.blackColor,
            )),
        centerTitle: true,
        title: const BoldTextView(
          data: "BARBELL BENCH PRESS",
          fontSize: 18,
          textColor: AppColors.blackColor,
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const SemiBoldTextView(
                data: "Find any",
                fontSize: 20,
                textColor: AppColors.blackColor,
              ),
              const SizedBox(height: 5),
              const BoldTextView(
                data: "Warm-up Workout",
                fontSize: 20,
                textColor: AppColors.blackColor,
              ),
              const SizedBox(height: 15),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeDetails1(),
                        ));
                  },
                  child: Container(
                    height: 170,
                    width: 300,
                    margin: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.primaryColor,
                      image: const DecorationImage(
                        image: AssetImage("assets/image/stretching.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 33,
                        width: double.maxFinite,
                        padding: const EdgeInsets.only(left: 7),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: AppColors.primaryColor,
                        ),
                        child: const Center(
                          child: SemiBoldTextView(
                            data: "Barbell Bench Press",
                            fontSize: 13,
                            textColor: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
