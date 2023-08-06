import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/helpers/sp_helper.dart';
import 'package:layouts/screens/buttom_navigation_bar_screens/buttom_navigation_bar_screen.dart';

import 'package:layouts/screens/on_bording/widgets/content_section.dart';
import 'package:layouts/screens/on_bording/widgets/dot_Indecator.dart';

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
            const SizedBox(
              width: double.infinity,
              height: 28,
            ),
            Visibility(
              visible: !(checkIfLastPage()),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: InkWell(
                    onTap: () {
                      closeOnBoarding();
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                onPageChanged: (newPageIndex) {
                  setState(() {
                    _pageIndex = newPageIndex;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardData.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        ))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 49),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff5BE07A))),
                  onPressed: () {
                    if (checkIfLastPage()) {
                      closeOnBoarding();
                    } else {
                      setState(() {
                        _pageIndex++;
                        controller.animateToPage(_pageIndex,
                            duration: const Duration(milliseconds: 350),
                            curve: Curves.easeIn);
                      });
                    }
                  },
                  child: Text(
                    checkIfLastPage() ? 'Get Started' : 'Continue',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  bool checkIfLastPage() {
    return (_pageIndex == onBoardData.length - 1);
  }

  closeOnBoarding() {
    SPHelper.spHelper.storeUserStatus();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return ButtomNavigationScreen();
    }));
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
