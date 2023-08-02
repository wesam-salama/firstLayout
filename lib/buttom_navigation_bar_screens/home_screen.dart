import 'package:flutter/material.dart';
import 'package:layouts/widgets/cat_item.dart';
import 'package:layouts/widgets/main_cat_section.dart';
import 'package:layouts/widgets/special_offers_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Header Section
              Container(
                height: 80,
                padding: EdgeInsets.only(left: 31, right: 22),
                width: MediaQuery.sizeOf(context).width,
                color: Color(0xFFF5F5F5),
                // alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver to',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF595959),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF0A9C2D),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              'El-Galaa.st Thani,Assiut',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Icon(
                        Icons.notifications,
                        color: Color(0xff818181),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              /// Cat Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  children: [
                    CatItem(
                      icon: 'assets/images/sea_food_ic.png',
                      title: 'Sea Food',
                      onTap: () {
                        print('Sea Food');
                      },
                      // titleFontSize: 15
                    ),
                    SizedBox(width: 12),
                    CatItem(
                      icon: 'assets/images/main_dishes_ic.png',
                      title: 'Main Dishes',
                      onTap: () {
                        print('Main Dishes');
                      },
                    ),
                    SizedBox(width: 12),
                    CatItem(
                      icon: 'assets/images/fast_food_ic.png',
                      title: 'Fast Food',
                      onTap: () {
                        print('Fast Food');
                      },
                    ),
                    SizedBox(width: 12),
                    CatItem(
                      icon: 'assets/images/dessert_ic.png',
                      title: 'Dessert',
                      onTap: () {
                        print('Dessert');
                      },
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              SizedBox(height: 6,),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 22),
              //   child: Row(
              //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         'top Rated',
              //         style: TextStyle(
              //           fontWeight: FontWeight.w500,
              //           fontSize: 17,
              //         ),
              //       ),
              //       Spacer(),
              //       InkWell(
              //         onTap: (){
              //           print('see all');
              //         },
              //         child: Text(
              //           'See All',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w500,
              //             fontSize: 16,
              //             color: Color(0xff0A9C2D)
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 8,),
              // Container(
              //   height: 144,
              //   // padding: EdgeInsets.symmetric(horizontal: 22),
              //   child: ListView(
              //     padding: EdgeInsets.symmetric(horizontal: 22),
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //     HomeItem(
              //       imageURL: 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczg3LW1uLTI1LTAxLnBuZw.png?s=oKp6HzXr641NDT5CYgD0K_kDgZAvDOdSPYweV18ihGo',
              //       title: 'Lorem ipsum dolor',
              //       onTap: (){
              //
              //       },
              //       itemPrice: '20 EGP',
              //     ),
              //     SizedBox(width: 8,),
              //     HomeItem(
              //       imageURL: 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczg3LW1uLTI1LTAxLnBuZw.png?s=oKp6HzXr641NDT5CYgD0K_kDgZAvDOdSPYweV18ihGo',
              //       title: 'Lorem ipsum dolor',
              //       onTap: (){
              //
              //       },
              //       itemPrice: '20 EGP',
              //     )
              //     ,
              //       SizedBox(width: 8,),
              //     HomeItem(
              //       imageURL: 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczg3LW1uLTI1LTAxLnBuZw.png?s=oKp6HzXr641NDT5CYgD0K_kDgZAvDOdSPYweV18ihGo',
              //       title: 'Lorem ipsum dolor',
              //       onTap: (){
              //
              //       },
              //       itemPrice: '20 EGP',
              //     )
              //   ],),
              // ),
              SpecialOffersItem(
                imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU',
                per: 33.3,
                colors: [Color(0xff23AA49), Color(0xff5BE07A)],
              ),
              SpecialOffersItem(
                imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU',
                per: 50,
                colors: [Color(0xff000000), Color(0xff5B447A)],
              ),
              MainCatSection(
                mainCatTitle: homeTopRatedDate['cat_title'],
                onTapSeeAll: (){
                  print('see all ${homeTopRatedDate['cat_title']}');
                },
                itemsList: homeTopRatedDate['items'],
              ),
              SizedBox(height: 16,),
              MainCatSection(
                mainCatTitle: homeNearToYouDate['cat_title'],
                onTapSeeAll: (){
                  print('see all ${homeNearToYouDate['cat_title']}');
                },
                itemsList: homeNearToYouDate['items'],
              )

            ],
          ),
        ),
      ),
    );
  }
}

Map<String, dynamic> homeTopRatedDate = {
  'cat_id': 1,
  'cat_title': 'Top rated',
  'items' : [
    {
      'id': 1,
      'title':'Lorem ipsum dolor 1',
      'itemPrice': '20 EGP',
      'image_url': 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczg3LW1uLTI1LTAxLnBuZw.png?s=oKp6HzXr641NDT5CYgD0K_kDgZAvDOdSPYweV18ihGo'
    },
    {
      'id': 2,
      'title':'Lorem ipsum dolor 2',
      'itemPrice': '15 EGP',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRftZVukcnrPxwBMP-DkDxZ6_B6E_P08GKn3Q&usqp=CAU'
    },
    {
      'id': 3,
      'title':'Lorem ipsum dolor 3',
      'itemPrice': '10 EGP',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmqB8XcoHkXjQj3Dg-hUZEFSrdxsSloHaMBg&usqp=CAU'
    },
    {
      'id': 4,
      'title':'Lorem ipsum dolor 4',
      'itemPrice': '5 EGP',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU'
    }
  ]
};


Map<String, dynamic> homeNearToYouDate = {
  'cat_id': 2,
  'cat_title': 'Near to you',
  'items' : [
    {
      'id': 1,
      'title':'Near to you 1',
      'itemPrice': '20 EGP',
      'image_url': 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczg3LW1uLTI1LTAxLnBuZw.png?s=oKp6HzXr641NDT5CYgD0K_kDgZAvDOdSPYweV18ihGo'
    },
    {
      'id': 2,
      'title':'Near to you 2',
      'itemPrice': '15 EGP',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRftZVukcnrPxwBMP-DkDxZ6_B6E_P08GKn3Q&usqp=CAU'
    },
    {
      'id': 3,
      'title':'Near to you 3',
      'itemPrice': '10 EGP',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmqB8XcoHkXjQj3Dg-hUZEFSrdxsSloHaMBg&usqp=CAU'
    },
    {
      'id': 4,
      'title':'Near to you 4',
      'itemPrice': '5 EGP',
      'image_url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRln7UCQ6eQtrC22xevgI1zhMjzQpl6xDK1Yw&usqp=CAU'
    }
  ]
};
