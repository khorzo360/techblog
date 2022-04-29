import 'package:flutter/material.dart';
import 'package:taekibloc1/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taekibloc1/main_screen.dart';
import 'package:taekibloc1/my_colors.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3000)).then((value) {

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>mainScreen()));




    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: Assets.images.splash,
                height: 64,
              ),
              SizedBox(height: 32,),
              SpinKitFadingCube(
                color: solIdColors.primeryColor,
                size: 32.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
