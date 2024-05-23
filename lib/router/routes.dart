import 'package:flutter/material.dart';

class Routes {

  static const String homeScreen = '/';

  //auth section
  static const String loginScreen = "/login";
  static const String signupScreen = "/signup";


  //static String getPaymentRoute(String page, String id, int user) => '$PAYMENT_SCREEN?page=$page&id=$id&user=$user';
 /* static String getMapRoute(String address, String type, String lat, String long, String name, String num, int id, int user) {
    return '$MAP_SCREEN?address=$address&type=$type&lat=$lat&long=$long&name=$name&num=$num&id=$id&user=$user';
  }
  static String getAddAddressRoute(String page, String action, String address, String type, String lat, String long, String name, String num, int id, int user) {
    return '$ADD_ADDRESS_SCREEN?page=$page&action=$action&address=$address&type=$type&lat=$lat&long=$long&name=$name&num=$num&id=$id&user=$user';
  }*/
}

// class RouteFinder{
//   static Widget findRoute(String route){
//     switch(route){
//       case Routes.LOGIN: return LoginScreen();
//       default: return MainScreen();
//     }
//   }
// }