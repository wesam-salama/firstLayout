import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/Navigation_pages/page3.dart';
import 'package:layouts/Navigation_pages/page1.dart';
import 'package:layouts/Navigation_pages/page2.dart';

import 'package:layouts/helpers/sp_helper.dart';
import 'package:layouts/screens/auth/login_screen.dart';
import 'package:layouts/screens/favorites/contoller/my_favorite_controller.dart';
import 'package:layouts/screens/provider_state/provider_controller.dart';
import 'package:layouts/screens/provider_state/provider_controllrt_2.dart';
import 'package:layouts/screens/provider_state/provider_state_screen.dart';
import 'package:layouts/screens/responsive/responsive_screen.dart';
import 'package:layouts/screens/speacial_offers/controller/special_offers_controller.dart';
import 'package:layouts/screens/splach/splach_screen.dart';
import 'package:layouts/widgets/cat_item.dart';
import 'package:layouts/widgets/home_item.dart';
import 'package:layouts/widgets/main_cat_section.dart';
import 'package:layouts/screens/speacial_offers/view/widgets/special_offers_item.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SPHelper.spHelper.initSharedPreferences();
  runApp(MultiProvider(providers: [
    // ChangeNotifierProvider(create: (_)=> ProviderController()),
    // ChangeNotifierProvider(create: (_)=> ProviderController2()),
    //   ChangeNotifierProvider.value(value: MyFavoriteController()),
    ChangeNotifierProvider(create: (_) => MyFavoriteController()),
    ChangeNotifierProvider(create: (_) => SpecialOffersController()),

  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) {
      return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
            useMaterial3: true,
          ),

          home: ResponsiveScreen()
        // SplachScreen(),

        // ChangeNotifierProvider.value(
        //     value: ProviderController(),
        //     child: ProviderStateScreen()),
        // LoginScreen()
        // SplachScreen()
        // NavigationWorkSpase(),
      );
    },);


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
