import 'package:flutter/material.dart';
import 'package:taekibloc1/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taekibloc1/my_colors.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:Text('main_screen'),
        ),
      ),
    );
  }
}
