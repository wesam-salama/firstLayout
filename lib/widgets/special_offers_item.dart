import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialOffersItem extends StatelessWidget {
  const SpecialOffersItem({
    super.key,
    required this.imageURL,
    required this.per,
    required this.colors,
  });

  final String? imageURL;
  final double? per;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 26, vertical: 9),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient:
              LinearGradient(colors: colors ?? [Color(0xff23AA49), Color(0xff5BE07A)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 8),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '$per',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 125,
                      // color: Colors.black,
                      child: Text(
                        'Special Deal For October!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                    // color: Colors.black,
                    child: Image.network(
                      '$imageURL',
                  width: 120,
                  height: 120,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}