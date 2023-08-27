// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import, prefer_const_declarations, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login.dart';
import 'package:flutter_application_1/Widgets/followersCon.dart';
import 'package:flutter_application_1/Screens/signin.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constant/color.dart';
import '../Widgets/listtile.dart';
import '../Widgets/theme.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void contactMeOnWhatsApp() async {
    final phoneNumber = '+201275619451'; // Replace with your phone number
    final message = Uri.encodeComponent(
        'Hello Karim, I Want To Talk With You!'); // Replace with your predefined message

    final whatsappUrl = 'https://wa.me/$phoneNumber?text=$message';

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.isDark ? cdark : cwhite,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   onPressed: () {
        //                 contactMeOnWhatsApp();

        //   },
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Color(0xFFF3651F),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(55),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                child: Image.asset(
                                  "assets/profile.png",
                                  width: 70,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Karim Mohamed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "@KaRiM.MoHaMeD.551",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      FollowersContainer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(38, 0, 0, 0),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTiile(
                          color: Color(0xFFF3651F),
                          icon: Icons.person,
                          text: "Account Information",
                        ),
                        ListTiile(
                          color: cgreen,
                          icon: Icons.shopping_cart,
                          text: "Orders",
                        ),
                        ListTiile(
                          color: Color(0xFFFFB300),
                          icon: Icons.payment,
                          text: "Payment Method",
                        ),
                        ListTiile(
                          color: Color(0xFF884DFF),
                          icon: Icons.location_on,
                          text: "Location",
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(38, 0, 0, 0),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTiile(
                          color: Color(0xFF121924),
                          icon: Icons.settings,
                          text: "Settings",
                        ),
                        GestureDetector(
                          onTap: () {
                            contactMeOnWhatsApp();
                          },
                          child: ListTiile(
                            color: Color(0xFF0095FF),
                            icon: Icons.message,
                            text: "Contact with Us",
                          ),
                        ),
                        ListTiile(
                          color: Color(0xFF029671),
                          icon: Icons.info,
                          text: "About Us",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
