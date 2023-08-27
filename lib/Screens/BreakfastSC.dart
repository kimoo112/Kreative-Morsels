// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Constant/color.dart';
import '../Model/breakfast.dart';
import '../Widgets/foodCon.dart';
import '../Widgets/theme.dart';

class BreakfastScreen extends StatelessWidget {
  const BreakfastScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.isDark ? cdark : cwhite,
      appBar: AppBar(
        title: Text(
          'Breakfast Screen',
          style: TextStyle(
              color: AppTheme.isDark ? cwhite : cdark,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: AppTheme.isDark ? cwhite : cdark,)),
             backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                                             physics: const NeverScrollableScrollPhysics(),

                itemBuilder: (context, index) {
                  return ContainerBD(
                   image:HomeListBR[index].image ,
                   text: HomeListBR[index].Text,
                   recipe: HomeListBR[index].recpie,
                  );
                },
                itemCount: HomeListBR.length,
              ),
          ],
        ),
      )
    );
  }
}
