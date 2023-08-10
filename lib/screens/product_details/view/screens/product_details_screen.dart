import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:layouts/screens/Products/controller/product_details_controller.dart';
import 'package:layouts/widgets/custom_text_widget.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const CustomTextWidget(
            title: 'Product details',
            fontSize: 22,
          ),
          centerTitle: true,
        ),
        body: Consumer<ProductDetailsController>(
          builder:
              (BuildContext context, productDetailsController, Widget? child) {
            if (productDetailsController.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 1.sw,
                ),
                CustomTextWidget(
                  title: productDetailsController.product?.category ?? '',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextWidget(
                  title:
                      'Price: ${productDetailsController.product?.price ?? 0} \$',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 150.h,
                  child: Image.network(
                    productDetailsController.product?.image ?? '',
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                CustomTextWidget(
                  title: productDetailsController.product?.title ?? '',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 13.h,
                ),
                CustomTextWidget(
                  title: productDetailsController.product?.description ?? '',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
