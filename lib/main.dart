import 'package:flutter/material.dart';
import 'package:layouts/pages/page3.dart';
import 'package:layouts/pages/page1.dart';
import 'package:layouts/pages/page2.dart';
import 'package:layouts/widgets/cat_item.dart';
import 'package:layouts/widgets/home_item.dart';
import 'package:layouts/widgets/main_cat_section.dart';
import 'package:layouts/widgets/special_offers_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavigationWorkSpase(),
    );
  }
}

class NavigationWorkSpase extends StatefulWidget {
  const NavigationWorkSpase({super.key});

  @override
  State<NavigationWorkSpase> createState() => _NavigationWorkSpaseState();
}

class _NavigationWorkSpaseState extends State<NavigationWorkSpase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // This sized box used to give Column all space in width
            SizedBox(width: double.infinity,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return Page1();
                })
              );
            }, child: Text('Move To page 1')),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                return Page2();
              }));
            }, child: Text('Move To page 2')),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                return Page3();
              }));
            }, child: Text('Move To page 3')),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              if(Navigator.of(context).canPop()){
                Navigator.of(context).pop();
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                  content: const Text("Can't pop man"),
                  action: SnackBarAction(
                    label: 'Ok',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                ));
              }

            }, child: Text('can back')),
          ],
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // print('MediaQuery:height: ${MediaQuery.sizeOf(context).width}');
    // print('MediaQuery:width: ${MediaQuery.of(context).size.width}');
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text('Layout'),
        // ),
        body:
        // SafeArea(
        //   child: Container(
        //     width: double.infinity,
        //     height: double.infinity,
        //     color: Colors.grey,
        //     child:
        //     Stack(
        //       children: [
        //       // Align(
        //         // alignment: Alignment.topCenter,
        //         // child:
        //         Positioned(
        //           top: -90,
        //           child: Center(
        //
        //             child: Container(
        //               width: 200,
        //               height: 200,
        //               color: Colors.black,
        //             ),
        //           ),
        //         ),
        //       // ),
        //       Align(
        //         alignment: Alignment.center,
        //         // left: 0,
        //         // right: 0,
        //         child: Container(
        //
        //           width: 150,
        //           height: 150,
        //           color: Colors.green,
        //         ),
        //       ),
        //       Positioned(
        //         top: -50,
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.amber,
        //         ),
        //       ),
        //     ],),
        //   ),
        // )
        SafeArea(
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
    )

        // Container(
        //     width: double.infinity,
        //     height: double.infinity,
        //     color: Colors.grey,
        //     // margin: EdgeInsets.only(left: 30,right: 30),
        //     padding: EdgeInsets.symmetric(
        //       horizontal: 0
        //     ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.green,
        //           // alignment: Alignment.center,
        //           // padding: EdgeInsets.all(16),
        //           child: Text(
        //             'Child',
        //             style: TextStyle(
        //               fontSize: 22,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold
        //             ),
        //           ),
        //         ),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.amber,
        //         )
        //       ],
        //     )
        //
        //     // Column(
        //     //   mainAxisSize: MainAxisSize.max,
        //     //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     //   crossAxisAlignment: CrossAxisAlignment.center,
        //     //   children: [
        //     //
        //     //     // Container(
        //     //     //   width: 100,
        //     //     //   height: 100,
        //     //     //   color: Colors.green,
        //     //     // ),
        //     //     Container(
        //     //       width: 100,
        //     //       height: 100,
        //     //       color: Colors.red,
        //     //     ),
        //     //     // SizedBox(
        //     //     //   height: 16,
        //     //     // ),
        //     //     Container(
        //     //       width: 100,
        //     //       height: 100,
        //     //       color: Colors.amber,
        //     //     ),
        //     //     // SizedBox(height: 16,),
        //     //     Container(
        //     //       width: 100,
        //     //       height: 100,
        //     //       color: Colors.black,
        //     //     ),
        //     //   ],
        //     // ),
        //     )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  // Widget _catItem({
  //   required String icon,
  //   required String title,
  //   double? titleFontSize,
  //   required VoidCallback onTap,
  // }) {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Column(
  //       children: [
  //         Container(
  //           width: 74,
  //           height: 74,
  //           padding: EdgeInsets.all(16),
  //           decoration:
  //               BoxDecoration(color: Color(0xFFF5F5F5), shape: BoxShape.circle),
  //           alignment: Alignment.center,
  //           child: Image.asset(
  //             icon,
  //             fit: BoxFit.fitWidth,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 8,
  //         ),
  //         Text(
  //           title,
  //           style: TextStyle(
  //               fontSize: titleFontSize ?? 12, fontWeight: FontWeight.w600),
  //         ),
  //       ],
  //     ),
  //   );
  // }
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
