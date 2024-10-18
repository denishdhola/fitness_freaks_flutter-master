import 'package:fitness_freaks/widgets/common/icon_view.dart';

import '../../../../export.dart';

class HomeDetails1 extends StatefulWidget {
  const HomeDetails1({super.key});

  @override
  State<HomeDetails1> createState() => _BodyfocusDetailsState();
}

class _BodyfocusDetailsState extends State<HomeDetails1> {
  bool isSpeaking = false;
  String detailText =
      """For heel digs places alternate heels to the front keeping the front foot pointing up,and punch out with each dig. keep a slight bend in the supporting leg.
""";
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
          data: "WARM-UP TRAINING",
          fontSize: 18,
          textColor: AppColors.blackColor,
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/image/stretching.jpg"),
                fit: BoxFit.cover,
              )),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: BoldTextView(
                  data: "Heel Digs",
                  fontSize: 22,
                  textColor: AppColors.whiteColor,
                ),
              ),
            ),
            Container(
              height: 5,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(117, 87, 5, 210),
                  Color.fromARGB(222, 87, 5, 210),
                  Color.fromARGB(222, 87, 5, 210),
                  Color.fromARGB(142, 87, 5, 210),
                ],
              )),
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: AppColors.blackColor,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const SemiBoldTextView(
                          data: "Details",
                          fontSize: 18,
                          textColor: AppColors.primaryColor,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.color_lens_outlined,
                                color: AppColors.primaryColor,
                                size: 25,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    isSpeaking = !isSpeaking;
                                  });
                                },
                                icon: Icon(
                                  !isSpeaking ? Icons.volume_off_sharp : Icons.volume_up_rounded,
                                  color: AppColors.primaryColor,
                                  size: 25,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: AppColors.blackColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      detailText,
                      style: const TextStyle(
                        letterSpacing: 1,
                        color: AppColors.primaryColor,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BoldTextView(
                    data: "Tutorial:",
                    fontSize: 20,
                    textColor: AppColors.primarySwatchColor,
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.maxFinite,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
