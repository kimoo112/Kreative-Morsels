// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/TheBase.dart';
import 'package:flutter_application_1/Screens/profile.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("assets/Logos@2x.png"),
          ),
          SizedBox(width: 0.0, height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Please login to use the app"),
)
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              color: Colors.white,
boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(38, 0, 0, 0),
                                blurRadius:10,
                                spreadRadius: .4,
                              )
                            ]),
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email"
              
                        ),
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              color: Colors.white,
boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(38, 0, 0, 0),
                                blurRadius:10,
                                spreadRadius: .4,
                              )
                            ]),
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password"
              
                        ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   TextButton(onPressed: (){Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TheBase()));
                          }, child: Text("Forget Password ?",style: TextStyle(color: Colors.black)),)
)
            ],
          ),
Padding(
  padding: const EdgeInsets.all(22.0),
  child:   Container(
  
    width: double.infinity,
 height: 50, 
    decoration: BoxDecoration(
  
      color: Color(0xFFF3651F),
  borderRadius: BorderRadius.circular(12)
      
  
    ),
    alignment: Alignment.center,
    child: Text("SIGNIN",style: TextStyle(color: Colors.white,fontSize: 18),),
  
  ),
)
        ],
      )
      ) 
    );
  }
}
