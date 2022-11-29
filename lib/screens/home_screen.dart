import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:workout_app/core/app_colors.dart';
import 'package:workout_app/core/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List info = [];
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/info.json')
        .then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 45, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.homePageTitle,
                  ),
                ),
                //
                Expanded(child: Container()),
                //
                Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.homePageIcons,
                  size: 20,
                ),
                const SizedBox(width: 10.0),
                Icon(
                  Icons.calendar_today_outlined,
                  color: AppColors.homePageIcons,
                  size: 20,
                ),
                const SizedBox(width: 15.0),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.homePageIcons,
                  size: 20,
                ),
              ],
            ),
            //
            const SizedBox(height: 30.0),
            //
            Row(
              children: [
                Text(
                  'your program',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.homePageSubtitle,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: AppColors.homePageDetail,
                  ),
                ),
                const SizedBox(width: 5.0),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.homePageIcons,
                  size: 20,
                ),
              ],
            ),
            //
            const SizedBox(height: 20.0),
            //
            //Card
            Container(
              width: SizeConfig.screenWidth,
              height: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    color: AppColors.gradientSecond,
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    AppColors.gradientFirst.withOpacity(.8),
                    AppColors.gradientSecond.withOpacity(.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //
                    Text(
                      'Next workout',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.homePageContainerTextSmall,
                      ),
                    ),
                    //
                    const SizedBox(height: 5.0),
                    Text(
                      'Legs Toning',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.homePageContainerTextSmall,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'and Gluts Workout',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.homePageContainerTextSmall,
                      ),
                    ),
                    //
                    const SizedBox(height: 25.0),
                    //Timer and playbtn Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: AppColors.homePageContainerTextSmall,
                              size: 20,
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              '60 min',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: AppColors.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        //
                        Expanded(child: Container()),
                        //Play Btn
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: AppColors.gradientFirst,
                              blurRadius: 20,
                              offset: Offset(4, 8),
                            )
                          ], borderRadius: BorderRadius.circular(60)),
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                        //
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
            const SizedBox(height: 5.0),
            //
            //Photo Tile
            Container(
              height: 180,
              width: SizeConfig.screenWidth,
              child: Stack(
                children: [
                  //bg Image of container
                  Container(
                    width: SizeConfig.screenWidth,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      //color: AppColors.,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/card.jpg'),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(8, 10),
                          blurRadius: 40,
                          color: AppColors.gradientSecond.withOpacity(.3),
                        ),
                        BoxShadow(
                          offset: Offset(-1, -5),
                          blurRadius: 10,
                          color: AppColors.gradientSecond.withOpacity(.3),
                        ),
                      ],
                    ),
                  ),
                  //Image
                  Container(
                    width: SizeConfig.screenWidth,
                    height: 200,
                    margin: EdgeInsets.only(
                      right: 200,
                      bottom: 40,
                    ),
                    decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(.2),
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/figure.png'),
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //
                  //text columb
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    // color: Colors.redAccent.withOpacity(.2),
                    margin: const EdgeInsets.only(
                      left: 160,
                      top: 30,
                    ),
                    //padding: EdgeInsets.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        Text(
                          'You are doing great',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.homePageDetail,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        RichText(
                          text: TextSpan(
                              text: "Keep it up\n",
                              style: TextStyle(
                                color: AppColors.homePagePlanColor,
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text: "stick to your plan",
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                ],
              ),
            ),
            //
            //Area of focu text
            Row(
              children: [
                Text(
                  'Area of focus',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.homePageTitle,
                  ),
                ),
              ],
            ),
            //
            const SizedBox(height: 15.0),
            //list
            Expanded(
              child: OverflowBox(
                maxWidth: SizeConfig.screenWidth,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                    itemCount: info.length.toDouble() ~/ 2,
                    itemBuilder: (_, i) {
                      int a = 2 * i;
                      int b = 2 * i + 1;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: (SizeConfig.screenWidth - 90) / 2,
                            height: 170,
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage(info[a]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color:
                                      AppColors.gradientSecond.withOpacity(.1),
                                ),
                                BoxShadow(
                                  offset: Offset(-5, -5),
                                  blurRadius: 3,
                                  color:
                                      AppColors.gradientSecond.withOpacity(.1),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.only(bottom: 5),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[a]['title'],
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.homePageDetail,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          //
                          Container(
                            width: (SizeConfig.screenWidth - 90) / 2,
                            height: 170,
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage(info[b]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color:
                                      AppColors.gradientSecond.withOpacity(.1),
                                ),
                                BoxShadow(
                                  offset: Offset(-5, -5),
                                  blurRadius: 3,
                                  color:
                                      AppColors.gradientSecond.withOpacity(.1),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.only(bottom: 5),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[b]['title'],
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.homePageDetail,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
