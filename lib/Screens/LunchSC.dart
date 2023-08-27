// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';

import '../Constant/color.dart';
import '../Model/Lunch.dart';
import '../Model/breakfast.dart';
import '../Widgets/foodCon.dart';
import '../Widgets/theme.dart';

class LunchScreen extends StatelessWidget {
  const LunchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.isDark ? cdark : cwhite,
      appBar: AppBar(
        title: Text(
          'Lunch Screen',
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
              physics: const NeverScrollableScrollPhysics(),

                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
              
                itemBuilder: (context, index) {
                  return ContainerBD(
                   image:HomeListLU[index].image ,
                   text: HomeListLU[index].Text,
                   recipe: HomeListLU[index].recpie,
                  );
                },
                itemCount: HomeListLU.length,
              ),
          ],
        ),
      )
    );
  }
}
