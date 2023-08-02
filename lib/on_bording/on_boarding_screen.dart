import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/on_bording/content_section.dart';

class OnboardingScrren extends StatefulWidget {
  OnboardingScrren({super.key});

  @override
  State<OnboardingScrren> createState() => _OnboardingScrrenState();
}

class _OnboardingScrrenState extends State<OnboardingScrren> {
  int _pageIndex = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 28,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 17),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                onPageChanged: (newPageIndex) {
                  setState(() {
                    _pageIndex = newPageIndex;
                    controller.jumpToPage(newPageIndex);
                    // controller.animateToPage(_pageIndex, duration: Duration(milliseconds: 350), curve: Curves.easeIn);
                    print(_pageIndex);
                  });
                },
                itemCount: onBoardData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContentSection(
                    image: onBoardData[index].image,
                    title: onBoardData[index].title,
                    description: onBoardData[index].description,
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 49),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff5BE07A))),
                  onPressed: () {
                    setState(() {
                      _pageIndex++;
                    });
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoard> onBoardData = [
  OnBoard(
    image: 'assets/images/onBording1.svg',
    title: 'Welcome to Sahlah',
    description: 'Enjoy a fast and smooth food delivery at your doorstep',
  ),
  OnBoard(
    image: 'assets/images/onBording2.svg',
    title: 'Get delivery on time',
    description:
        'Order your favorite food within the palm of your hand and the zone of your comfort.',
  ),
  OnBoard(
    image: 'assets/images/onBording3.svg',
    title: 'Choose your food',
    description:
        'Order your favorite food within the palm of your hand and the zone of your comfort.',
  )
];
