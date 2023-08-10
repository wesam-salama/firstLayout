import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:layouts/widgets/custom_text_widget.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.cat,
    required this.price,
    required this.imageURL,
    required this.title,
    required this.des,
    required this.onTap,
  });

  final String cat;
  final num price;
  final String imageURL;
  final String title;
  final String des;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(16),
          // color: Colors.amber,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(
              title: cat,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomTextWidget(
              title: 'Price: $price \$',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
            SizedBox(
              height: 150.h,
              child: Image.network(
                imageURL,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            CustomTextWidget(
              title: title,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 13.h,
            ),
            CustomTextWidget(
              title: des,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey.withOpacity(0.5),
            ),
            // SizedBox(height: 50,)
          ],
        ),
      ),
    );
    ;
  }
}
