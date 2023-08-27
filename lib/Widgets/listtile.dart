// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListTiile extends StatelessWidget {
  const ListTiile({
    Key? key,required this.text,required this.icon,required this.color,
  }) : super(key: key);
  final text;
  final icon;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:  ListTile(
        onTap: () {
          
        },
        leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color:color,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 22,
            )),
        title: Text(text,style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: Icon(
          Icons.keyboard_arrow_right_outlined,
          color: Color(0xFFF3651F),
        ),
      ),
    );
  }
}
