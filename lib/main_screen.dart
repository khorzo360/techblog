import 'package:flutter/material.dart';
import 'package:taekibloc1/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taekibloc1/my_colors.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu),
                  Image(
                    image: Assets.images.splash,
                    width: size.width / 4,
                    height: size.height / 13.6,
                  ),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(height: 8,),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: Image(
                          image: Assets.images.posterText,
                        ).image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                        Container(
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(colors:gradiantColors.home_poster_text,begin:Alignment.topCenter,end: Alignment.bottomCenter  )
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
