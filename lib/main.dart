import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/Navigation_pages/page3.dart';
import 'package:layouts/Navigation_pages/page1.dart';
import 'package:layouts/Navigation_pages/page2.dart';
import 'package:layouts/buttom_navigation_bar_screens/favorites_screen.dart';
import 'package:layouts/buttom_navigation_bar_screens/home_screen.dart';
import 'package:layouts/buttom_navigation_bar_screens/profile_screen.dart';
import 'package:layouts/buttom_navigation_bar_screens/track_screen.dart';
import 'package:layouts/splach/splach_screen.dart';
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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),

        home: SplachScreen()
        // NavigationWorkSpase(),
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
            SizedBox(
              width: double.infinity,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Page1();
                  }));
                },
                child: Text('Move To page 1')),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Page2();
                  }));
                },
                child: Text('Move To page 2')),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Page3();
                  }));
                },
                child: Text('Move To page 3')),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text("Can't pop man"),
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    ));
                  }
                },
                child: Text('can back')),
          ],
        ),
      ),
    );
  }
}
