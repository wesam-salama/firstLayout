import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/on_bording/on_boarding_screen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {


 @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
        return OnboardingScrren();
      }));
    })
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/Splash.png',
          ),
          fit: BoxFit.fill,
        ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80),
            child:
            // Lottie.asset('assets/images/logo_anomation.json')
            SvgPicture.asset('assets/images/logo_store.svg',)
        ),
      ),
    );
  }
}
