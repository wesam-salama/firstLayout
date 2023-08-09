import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:layouts/widgets/custom_text_widget.dart';


class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('width: ${MediaQuery.sizeOf(context).width}');
    log('height: ${MediaQuery.sizeOf(context).height}');

    log('screenutil:width: ${1.sw}');
    log('screenutil:height: ${1.sh}');
    return SafeArea(
      child:  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),

            Container(
              height: 74.w,
              // 100,
              // MediaQuery.sizeOf(context).height * 0.5,
              width: 74.w,
              // MediaQuery.sizeOf(context).width ,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16.h,),
            CustomTextWidget(title: 'test 1'),
            SizedBox(height: 16.h,),
            CustomTextWidget(title: 'test 1',color: Colors.amber,),
            SizedBox(height: 16.h,),
            CustomTextWidget(title: 'test 1'),
            // Expanded(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 2,
            //         child: Container(
            //           // height:
            //           // 100,
            //           // MediaQuery.sizeOf(context).height * 0.5,
            //           // width:  MediaQuery.sizeOf(context).width ,
            //           color: Colors.black,
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           // height:
            //           // 100,
            //           // MediaQuery.sizeOf(context).height * 0.5,
            //           // width:  MediaQuery.sizeOf(context).width ,
            //           color: Colors.amber,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     // height:
            //     // 100,
            //     // MediaQuery.sizeOf(context).height * 0.5,
            //     // width:  MediaQuery.sizeOf(context).width ,
            //     color: Colors.red,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
