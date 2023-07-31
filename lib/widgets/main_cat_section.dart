import 'package:flutter/material.dart';
import 'package:layouts/widgets/home_item.dart';

class MainCatSection extends StatelessWidget {
  const MainCatSection({
    super.key,
    required this.mainCatTitle,
    required this.onTapSeeAll,
    required this.itemsList,
  });

  final String mainCatTitle;
  final VoidCallback onTapSeeAll;
  final List<Map<String, dynamic>> itemsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mainCatTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: onTapSeeAll,
                child: const Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff0A9C2D)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 144,
          // padding: EdgeInsets.symmetric(horizontal: 22),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            itemCount: itemsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return HomeItem(
                imageURL: itemsList[index]['image_url'],
                title: itemsList[index]['title'],
                onTap: () {
                  print(
                      '${itemsList[index]['title']} id = ${itemsList[index]['id']}');
                },
                itemPrice: itemsList[index]['itemPrice'],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 18);
            },
          ),
        ),
      ],
    );
  }
}
