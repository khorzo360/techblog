import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taekibloc1/My_strings.dart';
import 'package:taekibloc1/gen/assets.gen.dart';

import 'package:taekibloc1/models/fakedata.dart';
import 'package:taekibloc1/my_colors.dart';

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 12;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Image(
                    image: Assets.images.splash,
                    width: size.width / 4,
                    height: size.height / 13.6,
                  ),
                  const Icon(Icons.search),
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
                        image: AssetImage(homePagePostermap["imageUrl"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    foregroundDecoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                            colors: gradiantColors.home_poster_text,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
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
                            Text(
                              homePagePostermap["writer"] +
                                  "-" +
                                  homePagePostermap["data"],
                              style: textTheme.subtitle1,
                            ),
                            Row(
                              children: [
                                Text(
                                  homePagePostermap["view"],
                                  style: textTheme.subtitle2,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          homePagePostermap["title"],
                          style: textTheme.headline1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              //listhastag
              SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tagList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, 8, index == 0 ? bodyMargin : 11, 8),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: Row(
                              children: [
                                ImageIcon(
                                  Assets.icons.hashtag,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  tagList[index].title,
                                  style: textTheme.headline2,
                                )
                              ],
                            ),
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
              ),
              SizedBox(
                height: 32,
              ),
              //bluepen
              Padding(
                padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
                child: Row(
                  children: [
                    ImageIcon(
                      Assets.icons.bluepen,
                      color: solIdColors.seeMore,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      My_Strings.viewHotestBlog,
                      style: textTheme.headline3,
                    ),
                  ],
                ),
              ),

              //list blog
              SizedBox(
                height: size.height / 3.5,
                child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      //blogitem
                      return Padding(
                        padding:  EdgeInsets.only(right:index == 0 ? bodyMargin : 15,  ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height / 5.3,
                              width: size.width / 2.4,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            blogList[index].imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    foregroundDecoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      gradient: LinearGradient(
                                        colors: gradiantColors.blogPost,
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    right: 0,
                                    left: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          blogList[index].writer,
                                          style: textTheme.subtitle1,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              blogList[index].views,
                                              style: textTheme.subtitle2,
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                blogList[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              style: textTheme.subtitle1,
                              ),
                              width: size.width / 2.4,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
