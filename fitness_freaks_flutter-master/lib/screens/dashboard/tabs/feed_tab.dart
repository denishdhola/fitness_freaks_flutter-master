import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FeedTab extends StatefulWidget {
  const FeedTab({super.key});

  @override
  State<FeedTab> createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularTextView(
                  data: "Explore",
                  fontSize: 15,
                ),
                BoldTextView(
                  data: "Freek's Feed",
                  fontSize: 20,
                )
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      ClipOval(
                        child: Image.network(
                          "https://imgs.search.brave.com/MykO0eplI01fXqj00FpOfXSGqfTEo6dTY7Vgz_qNBw4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzE4LzA3LzE3/LzM2MF9GXzMxODA3/MTcwNl82WVhBTXNW/RFBtdVRpc2Z3Y3Jk/Qm51T0FPWXlLNVVx/MS5qcGc",
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .03,
                      ),
                      const SemiBoldTextView(data: "Name")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageScreen(
                              imageUrl:
                                  "https://imgs.search.brave.com/MykO0eplI01fXqj00FpOfXSGqfTEo6dTY7Vgz_qNBw4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzE4LzA3LzE3/LzM2MF9GXzMxODA3/MTcwNl82WVhBTXNW/RFBtdVRpc2Z3Y3Jk/Qm51T0FPWXlLNVVx/MS5qcGc",
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: "imageHero$index",
                        child: Image.network(
                          "https://imgs.search.brave.com/MykO0eplI01fXqj00FpOfXSGqfTEo6dTY7Vgz_qNBw4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzE4LzA3LzE3/LzM2MF9GXzMxODA3/MTcwNl82WVhBTXNW/RFBtdVRpc2Z3Y3Jk/Qm51T0FPWXlLNVVx/MS5qcGc",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      const SemiBoldTextView(data: "Name"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .03,
                      ),
                      const Expanded(
                        child: RegularTextView(
                          data:
                              "commenthttps://imgs.search.brave.com/MykO0eplI01fXqj00FpOfXSGqfTEo6dTY7Vgz_qNBw4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzE4LzA3LzE3/LzM2MF9GXzMxODA3/MTcwNl82WVhBTXNW/RFBtdVRpc2Z3Y3Jk/Qm51T0FPWXlLNVVx/MS5qcGc",
                          maxLine: 1,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.heart,
                            color: AppColors.primaryColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .01,
                          ),
                          const SemiBoldTextView(
                            data: "Like 0",
                            textColor: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.share,
                            color: AppColors.primaryColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .01,
                          ),
                          const SemiBoldTextView(
                            data: "Share",
                            textColor: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            CupertinoIcons.add,
          )),
    );
  }
}

class ImageScreen extends StatelessWidget {
  final String imageUrl;
  int index;

  ImageScreen({required this.imageUrl, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparentColor,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: PhotoView(
            imageProvider: NetworkImage(imageUrl),
            heroAttributes: PhotoViewHeroAttributes(tag: "imageHero${index}"),
            backgroundDecoration: const BoxDecoration(
              color: AppColors.transparentColor,
            ),
          ),
        ),
      ),
    );
  }
}
