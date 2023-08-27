// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant/color.dart';

import '../Widgets/theme.dart';



class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key,required this.image,required this.title,required this.recipe}) : super(key: key);
  final image;
  final title;
  final recipe;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppTheme.isDark?cdark:cwhite ,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Hero(tag: widget.title,child: Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold))),
      centerTitle:true,

        backgroundColor: Colors.transparent,
        elevation: .0000000001,
        
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
             Hero(tag: widget.image,
             child: Image.asset(widget.image)),
             const SizedBox(height:10),
              Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,color: AppTheme.isDark?cwhite:cblack,fontSize: 25,letterSpacing: 2),),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(widget.recipe,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: corange),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
