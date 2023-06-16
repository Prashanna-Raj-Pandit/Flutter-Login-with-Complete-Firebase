import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/modals/dashboard/categories_model.dart';
import 'package:flutter_login_with_complete_backend_firebase/modals/dashboard/top_courses_model.dart';

import 'appbar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double height=mediaQuery.height;
    var theme = MediaQuery.of(context).platformBrightness;
    final isDark=theme==Brightness.dark;

    final list = DashboardCategoriesModel.list;
    final top_course_list=TopCoursesModel.list;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kDashboardTitle,
                style: textTheme.bodyMedium,
              ),
              Text(
                kDashboardHeading,
                style: textTheme.displayMedium,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(width: 2),
                  right: BorderSide(width: 2),
                  top: BorderSide(width: 2),
                  bottom: BorderSide(width: 2),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      kDashboardSearch,
                      style: textTheme.titleSmall,
                    ),
                    Icon(
                      Icons.search,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: list[index].onPress,
                    child: SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isDark?kSecondaryColor:kPrimaryColor),
                            child: Center(
                                child: Text(list[index].title,style: textTheme.displayMedium,)
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: kDefaultPadding-10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    list[index].heading,
                                    style: textTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    list[index].subHeading,
                                    style: textTheme.bodySmall,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isDark?kSecondaryColor:kCardColor,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.bookmark),
                              Image(
                                  height: 50,
                                  width: 50,
                                  image: AssetImage(kAndroidDevelopment))
                            ],
                          ),
                          SizedBox(
                            height: kDefaultSize,
                          ),
                          Text(
                            kDashboardBannerTitle1,
                            style: textTheme.bodyLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            kDashboardBannerSubTitle2,
                            style: textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isDark?kSecondaryColor:kCardColor,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.bookmark),
                                  Image(
                                      height: 50,
                                      width: 50,
                                      image: AssetImage(kAndroidDevelopment))
                                ],
                              ),
                              SizedBox(
                                height: kDefaultSize,
                              ),
                              Text(
                                kDashboardBannerTitle2,
                                style: textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                kDashboardBannerSubTitle2,
                                style: textTheme.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(

                                onPressed: () {}, child: Text('View All')))
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                kDashboardTopCourses,
                style: textTheme.displayMedium,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: top_course_list.length,
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.only(right: kDefaultPadding),
                    child: SizedBox(
                      width: 320,
                      //height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kPrimaryColor,
                        ),
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                      top_course_list[index].title,
                                      style: textTheme.titleSmall,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                Flexible(
                                    child:
                                    Image(height:150,image: AssetImage(top_course_list[index].image)))
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed:top_course_list[index].onPress,
                                  child: Icon(Icons.play_arrow),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder()),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      top_course_list[index].heading,
                                      style: textTheme.bodyMedium,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      top_course_list[index].subHeading,
                                      style: textTheme.bodySmall,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,

                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
