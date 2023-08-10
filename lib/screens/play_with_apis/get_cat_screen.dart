import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:layouts/core/netWork/dio_client.dart';
import 'package:layouts/screens/play_with_apis/store_provider.dart';
import 'package:layouts/widgets/custom_text_widget.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

class GetCatScreen extends StatefulWidget {
  const GetCatScreen({super.key});

  @override
  State<GetCatScreen> createState() => _GetCatScreenState();
}

class _GetCatScreenState extends State<GetCatScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<StoreController>(context, listen: false).getCategoriesData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<StoreController>(
          builder: (BuildContext context, provider, Widget? child) {
            if(provider.isLoading){
              return Center(child: CircularProgressIndicator());
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 1.sw),
                Container(
                  height: 100.h,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    itemCount: provider.categoriesList?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: CustomTextWidget(
                            title: provider.categoriesList?[index],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 16.w,);
                  },
                  ),
                ),
                SizedBox(height: 30.h,),
                _buttonSection(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buttonSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 52.w),
      child: InkWell(
        onTap: () async {
          await DioClient.dioClient.getAllProducts();
        },
        child: Container(
          height: 48.h,
          width: 1.sw,

          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          // alignment: Alignment.center,
          child: Center(
              child: CustomTextWidget(
            title: 'Get API data',
            color: Colors.white,
            fontSize: 22,
          )),
        ),
      ),
    );
  }
}
