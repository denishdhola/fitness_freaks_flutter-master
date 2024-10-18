import 'package:fitness_freaks/export.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/dietplan_tab.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/home%20tab/home_details_1.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/home%20tab/home_details_2.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
            child: Column(
              children: [
                const SizedBox(height: 15),
                // Appbar Row
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.backgroundColor,
                      backgroundImage: AssetImage("assets/image/profile.jpg"),
                    ),
                    const SizedBox(width: 25),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularTextView(
                          data: "Hey,",
                          fontSize: 17,
                        ),
                        RegularTextView(
                          data: "SANKET TALAVIYA!",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 35,
                        width: 35,
                        child: SvgPicture.asset(AppImages.star),
                      ),
                    )
                  ],
                ),
                // END Appbar Row
                const SizedBox(height: 25),
                // gym Quates
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    enableInfiniteScroll: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl: item,
                                  fit: BoxFit.cover,
                                  width: double.maxFinite,
                                  placeholder: (context, url) => const Center(
                                    child: SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: CircularProgressIndicator(color: AppColors.primaryColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                //end gym Quates
                const SizedBox(height: 20),
                const Row(
                  children: [
                    BoldTextView(data: "Body Focus"),
                  ],
                ),
                const SizedBox(height: 15),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 150, mainAxisSpacing: 10, crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(245, 130, 69, 222),
                        border: Border.all(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeLists(),
                            ),
                          );
                        },
                        child: const Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: BoldTextView(
                                data: "Warm-up",
                                textColor: AppColors.whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 15),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DietplanTab(),
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(199, 87, 5, 210),
                          Color.fromARGB(204, 233, 30, 98),
                          Color.fromARGB(204, 233, 30, 98),
                          Color.fromARGB(199, 87, 5, 210),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const BoldTextView(data: "30 DAYS PLAN", textColor: AppColors.whiteColor, fontSize: 20),
                            const BoldTextView(
                                data: "LOSS | MAINTAIN | GAIN", textColor: AppColors.blackColor, fontSize: 15),
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration:
                                  BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(50)),
                              child:
                                  const BoldTextView(data: "VIEW ALL", textColor: AppColors.blackColor, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    BoldTextView(
                      data: "2 minutes workouts",
                      fontSize: 15,
                      textColor: AppColors.blackColor,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 200,
                  // color: Colors.amber,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeDetails2(),
                            ));
                      },
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/image/stretching.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: AppColors.primaryColor,
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: BoldTextView(
                                data: "2 min leg workout",
                                textColor: AppColors.whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                //triceps
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Triceps", fontSize: 20, textColor: AppColors.blackColor),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeLists(),
                          ),
                        );
                      },
                      child: const BoldTextView(data: "SEE ALL", fontSize: 13, textColor: AppColors.primaryColor),
                    )
                  ],
                ),
                const Row(
                  children: [
                    BoldTextView(data: "WORKOUT YOU'LL LIKE", fontSize: 10, textColor: Color.fromARGB(202, 87, 5, 210)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 130,
                      width: 300,
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.primaryColor,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeDetails1(),
                            ),
                          );
                        },
                        child: Container(
                          // color: AppColors.amberColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/image/stretching.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SemiBoldTextView(
                                    data: "Skull Crusher",
                                    fontSize: 17,
                                    textColor: AppColors.whiteColor,
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: const Center(
                                      child: RegularTextView(
                                        data: "Explore",
                                        fontSize: 10,
                                        textColor: AppColors.blackColor,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //triceps ends
                //chest
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Chest", fontSize: 20, textColor: AppColors.blackColor),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeLists(),
                          ),
                        );
                      },
                      child: const BoldTextView(data: "SEE ALL", fontSize: 13, textColor: AppColors.primaryColor),
                    )
                  ],
                ),
                const Row(
                  children: [
                    BoldTextView(data: "WORKOUT YOU'LL LIKE", fontSize: 10, textColor: Color.fromARGB(202, 87, 5, 210)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeDetails1(),
                          ),
                        );
                      },
                      child: Container(
                        height: 130,
                        width: 300,
                        // padding: const EdgeInsets.only(25),
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
                            height: 20,
                            width: double.maxFinite,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                            ),
                            child: const Center(
                              child: Row(
                                children: [
                                  RegularTextView(
                                    data: "Barbell Bench Press",
                                    fontSize: 10,
                                    textColor: AppColors.whiteColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //Chest end
                const SizedBox(height: 15),
                //pranyam
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Pranayam", fontSize: 20, textColor: AppColors.blackColor),
                    IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: AppColors.greyColor,
                        radius: 20,
                        child: Center(
                          child: Icon(Icons.navigate_next_outlined),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 170,
                      width: 170,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/image/stretching.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BoldTextView(data: "Calmness", fontSize: 17, textColor: AppColors.whiteColor),
                              RegularTextView(
                                  data: "Calmn your body and mind", fontSize: 13, textColor: AppColors.whiteColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Diet Recipes", fontSize: 20, textColor: AppColors.blackColor),
                    TextButton(
                      onPressed: () {},
                      child: const BoldTextView(data: "VIEW ALL", fontSize: 13, textColor: AppColors.primaryColor),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 200,
                      width: 300,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(left: 7, bottom: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/image/stretching.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const BoldTextView(
                              data: "Oats Idli",
                              textColor: AppColors.whiteColor,
                              fontSize: 23,
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.transparent,
                                border: Border.all(color: AppColors.whiteColor, width: 2),
                              ),
                              child: const Center(
                                child: RegularTextView(
                                  data: "30 kcal",
                                  fontSize: 10,
                                  textColor: AppColors.whiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // arms
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Arms", fontSize: 20, textColor: AppColors.blackColor),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeLists(),
                          ),
                        );
                      },
                      child: const BoldTextView(data: "SEE ALL", fontSize: 13, textColor: AppColors.primaryColor),
                    )
                  ],
                ),
                const Row(
                  children: [
                    BoldTextView(data: "WORKOUT YOU'LL LIKE", fontSize: 10, textColor: Color.fromARGB(202, 87, 5, 210)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeDetails1(),
                          ),
                        );
                      },
                      child: Container(
                        height: 130,
                        width: 300,
                        // padding: const EdgeInsets.only(25),
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
                            height: 20,
                            width: double.maxFinite,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                            ),
                            child: const Center(
                              child: Row(
                                children: [
                                  RegularTextView(
                                    data: "Triceps Dips",
                                    fontSize: 10,
                                    textColor: AppColors.whiteColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // end arms
                const SizedBox(height: 15),
                // legs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Legs", fontSize: 20, textColor: AppColors.blackColor),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeLists(),
                          ),
                        );
                      },
                      child: const BoldTextView(data: "SEE ALL", fontSize: 13, textColor: AppColors.primaryColor),
                    )
                  ],
                ),
                const Row(
                  children: [
                    BoldTextView(data: "WORKOUT YOU'LL LIKE", fontSize: 10, textColor: Color.fromARGB(202, 87, 5, 210)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeDetails1(),
                          ),
                        );
                      },
                      child: Container(
                        height: 130,
                        width: 300,
                        padding: const EdgeInsets.all(25),
                        margin: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.primaryColor,
                        ),
                        child: Container(
                          // color: AppColors.amberColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/image/stretching.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Expanded(
                                    child: SemiBoldTextView(
                                      data: "Barbell Back",
                                      fontSize: 13,
                                      textColor: AppColors.whiteColor,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: const Center(
                                      child: RegularTextView(
                                        data: "SEE ALL",
                                        fontSize: 10,
                                        textColor: AppColors.blackColor,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // end legs
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldTextView(data: "Shopping", fontSize: 20, textColor: AppColors.blackColor),
                    TextButton(
                      onPressed: () {},
                      child: const BoldTextView(data: "SEE ALL", fontSize: 13, textColor: AppColors.primaryColor),
                    )
                  ],
                ),
                const Row(
                  children: [
                    BoldTextView(
                        data: "PRODUCT'S YOU'LL BUY", fontSize: 10, textColor: Color.fromARGB(202, 87, 5, 210)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {},
                      child: Container(
                        height: 250,
                        width: 200,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(191, 87, 5, 210),
                                AppColors.whiteColor,
                                AppColors.whiteColor,
                                AppColors.whiteColor,
                                Color.fromARGB(191, 87, 5, 210),
                              ],
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/image/bottle.png",
                              height: 85,
                              width: 100,
                            ),
                            const SemiBoldTextView(
                                data: "Water-Bottles", fontSize: 15, textColor: AppColors.blackColor),
                            Container(
                              height: 40,
                              width: 130,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(195, 92, 7, 220),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldTextView(
                                    data: "Explore",
                                    textColor: AppColors.whiteColor,
                                    fontSize: 15,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt_rounded,
                                    size: 25,
                                    color: AppColors.whiteColor,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 150,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage("assets/image/diet_background.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const BoldTextView(data: "DIET RECIPE'S", textColor: AppColors.whiteColor, fontSize: 20),
                      const BoldTextView(
                          data: "LOSS | MAINTAIN | GAIN", textColor: Color.fromARGB(209, 255, 193, 7), fontSize: 13),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: SemiBoldTextView(
                            data: "VIEW ALL",
                            fontSize: 10,
                            textColor: AppColors.blackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
