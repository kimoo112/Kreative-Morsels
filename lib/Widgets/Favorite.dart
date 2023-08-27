// // ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, prefer_const_constructors, library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Constant/color.dart';
// import 'package:flutter_application_1/Model/favorite.dart';
// import 'package:flutter_application_1/Screens/details.dart';
// import 'package:flutter_application_1/Widgets/theme.dart';

 
// class FavoriteCon extends StatefulWidget {
//   const FavoriteCon({Key? key, this.image, this.text, this.recipe})
//       : super(key: key);
//   final image;
//   final text;
//   final recipe;

//   @override
//   _FavoriteConState createState() => _FavoriteConState();
// }

// class _FavoriteConState extends State<FavoriteCon> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 0,
//       left: 10,
//       right: 10,
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             PageRouteBuilder(
//               transitionDuration: Duration(milliseconds: 500),
//               transitionsBuilder: (BuildContext context,
//                   Animation<double> animation,
//                   Animation<double> secondaryAnimation,
//                   Widget child) {
//                 return SlideTransition(
//                   position: Tween<Offset>(
//                     begin: Offset(0.0, 1.0),
//                     end: Offset.zero,
//                   ).animate(animation),
//                   child: child,
//                 );
//               },
//               pageBuilder: (BuildContext context, Animation<double> animation,
//                   Animation<double> secondaryAnimation) {
//                 return DetailsScreen(
//                   image: widget.image,
//                   title: widget.text,
//                   recipe: widget.recipe,
//                 );
//               },
//             ),
//           );
//         },
//         child: Container(
//           width: double.infinity,
//           height: 100,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(25),
//             color: AppTheme.isDark ? cseyam : cwhite,
//             boxShadow: [
//               BoxShadow(
//                 color: Color.fromARGB(38, 0, 0, 0),
//                 blurRadius: 3,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Hero(
//                   tag: widget.image,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: Image.asset(
//                       widget.image,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Hero(
//                       tag: widget.text,
//                       child: Text(
//                         widget.text,
//                         style: TextStyle(
//                           color: Color(0xFFF3651F),
//                           fontSize: 22,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {

//                         setState(() {
                        
//                                                                   favoriteList.removeAt(index);

//                         });
//                       },
//                       icon: Icon(
//                      Icons.delete
                       
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
