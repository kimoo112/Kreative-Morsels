// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/model.dart';
import 'package:flutter_application_1/Screens/BreakfastSC.dart';
import 'package:flutter_application_1/Screens/DinnerSC.dart';
import 'package:flutter_application_1/Screens/LunchSC.dart';

import '../Constant/color.dart';
import '../Widgets/Meals.dart';
import '../Widgets/followersCon.dart';
import '../Widgets/foodCon.dart';
import '../Widgets/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.isDark?cdark:cwhite,
      appBar: AppBar(
                backgroundColor: Colors.transparent,

        title: Text('Kreative Morsels',style: TextStyle(color: Color(0xFFF3651F),fontWeight: FontWeight.bold,fontSize: 22),),
        actions: [
     IconButton(onPressed: (){
      setState(() {
                AppTheme.isDark = !AppTheme.isDark;
              });
     }, icon: AppTheme.isDark
                ? Icon(
                    Icons.wb_sunny_outlined,
                    color: cwhite,
                  )
                : Icon(
                                        Icons.nightlight,

                    color: cdark,
                  ),)
        ],
elevation: 0,
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap:() {
                       Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BreakfastScreen()));
                    },
                    child: MealsContainer(nmeal: "Breakfast",image: 'assets/BreakFast.jpg')),
                  GestureDetector(
                    onTap:() {
                       Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LunchScreen()));
                    },
                    child:MealsContainer(nmeal: "Lunch",image: 'assets/Lunch.jpg')),
                  GestureDetector(
                    onTap:() {
                       Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DinnerScreen()));
                    },
                    child:MealsContainer(nmeal: "Dinner",image: 'assets/Dinner.jpg')),
                ],
              ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            // Text('Home'),
            Padding(
              padding: EdgeInsets.fromLTRB(27, 22, 0, 10),
              child: Text('Trending',style: TextStyle(color: Color(0xFFF3651F),fontSize: 17,fontWeight: FontWeight.bold)),
            ),
            ],
            ),
             ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
            
              itemBuilder: (context, index) {
                return ContainerBD(
                 image:HomeList[index].image ,
                 text: HomeList[index].Text,
                 recipe: HomeList[index].recpie,
                );
              },
              itemCount: HomeList.length,
            ),
           
          ],
        ),
      ),
    );
  }
}
