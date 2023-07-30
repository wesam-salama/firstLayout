import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
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
        body: SafeArea(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.only(left: 31,right: 22),
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
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Color(0xFF0A9C2D),),
                          SizedBox(width: 9,),
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
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Icon(Icons.notifications,color: Color(0xff818181),),
                )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/sea_food_ic.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        //   // color: Color(0xFFF5F5F5),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.asset(
                            'assets/images/sea_food_ic.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        //   // color: Color(0xFFF5F5F5),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.asset(
                            'assets/images/sea_food_ic.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        //   // color: Color(0xFFF5F5F5),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.asset(
                            'assets/images/sea_food_ic.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        //   // color: Color(0xFFF5F5F5),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.asset(
                            'assets/images/sea_food_ic.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        //   // color: Color(0xFFF5F5F5),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5), shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.asset(
                            'assets/images/sea_food_ic.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
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
}
