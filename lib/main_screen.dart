import 'package:flutter/material.dart';
import 'package:taekibloc1/gen/assets.gen.dart';

import 'package:taekibloc1/models/fakedata.dart';
import 'package:taekibloc1/my_colors.dart';

class mainScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    var textTheme=Theme.of(context).textTheme;
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
              const SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image:AssetImage(homePagePostermap["imageUrl"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                      foregroundDecoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                            colors: gradiantColors.home_poster_text,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)) ,

                  ),
                  
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 8,
                    child: Column(
                        children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                     Text(homePagePostermap["writer"]+"-"+homePagePostermap["data"],style:textTheme.subtitle1 ,),
                                    
                                      Row(


                                        children: [
                                      
                                          Text(homePagePostermap["view"],style: textTheme.subtitle2,),
                                          SizedBox(width: 8,),
                                          Icon(Icons.remove_red_eye,color: Colors.white,size: 16,),
                                        ],
                                      ),
                  
                              ],
                             
                  
                           ),
                            
                                      Text(homePagePostermap["title"],style: textTheme.headline1,),
                  
                  
                  
                  
                        ],
                  
                  
                  
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: tagList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                           children: [
                           ImageIcon(Assets.icons.hashtag),
                           SizedBox(width: 8,),
                           //Text(tagList[index].title,style: textTheme.headline2,)



                           ],


                        ),
                        height: 60,

                      decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      gradient: LinearGradient(
                        colors: gradiantColors.tags,
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        
                         ),
                       
                      ),
                      ),
                    );
              
              
              
                  }),
              )
             

          
            ],
          ),
        ),
      ),
    );
  }
}
