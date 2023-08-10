import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:layouts/screens/Products/controller/product_details_controller.dart';
import 'package:layouts/screens/Products/controller/products_controller.dart';
import 'package:layouts/screens/Products/view/widgets/products_item.dart';
import 'package:layouts/screens/product_details/view/screens/product_details_screen.dart';
import 'package:layouts/widgets/custom_text_widget.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProductsController>(context, listen: false).getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Consumer<ProductsController>(
        builder: (BuildContext context, productsProvider, Widget? child) {
          if (productsProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
            itemCount: productsProvider.products?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return ProductItem(
                onTap: () {
                  Provider.of<ProductDetailsController>(context,listen: false)
                      .getProductDetails(
                      productId: productsProvider.products?[index].id ?? 0);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ProductDetailsScreen();
                  }));

                },
                cat: productsProvider.products?[index].category ?? '',
                price: productsProvider.products?[index].price ?? 0,
                imageURL: productsProvider.products?[index].image ?? '',
                title: productsProvider.products?[index].title ?? '',
                des: productsProvider.products?[index].description ?? '',
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 12.h,
              );
            },
          );
        },
      )),
    );
  }
}
