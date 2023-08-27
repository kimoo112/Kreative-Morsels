// ignore_for_file: file_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant/color.dart';
import 'package:flutter_application_1/Widgets/theme.dart';

class MealsContainer extends StatelessWidget {
  const MealsContainer({
    Key? key,
    required this.nmeal,
    required this.image,
  }) : super(key: key);
  final nmeal;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 60,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(image,fit: BoxFit.cover,)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          nmeal,
          style: TextStyle(
              color: AppTheme.isDark ? cwhite : cblack,
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
