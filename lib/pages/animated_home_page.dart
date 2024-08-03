import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:mytriptokashmir/pages/nav_pages/my_page.dart';
import 'package:mytriptokashmir/pages/secondary_pages/cab_booking_screen.dart';
import 'package:mytriptokashmir/pages/secondary_pages/shikara_booking_page.dart';

import '../misc/colors.dart';
import 'secondary_pages/drawer_page.dart';
import 'home_page.dart';


class AnimatedHomePage extends StatefulWidget {
  const AnimatedHomePage({super.key});

  @override
  State<AnimatedHomePage> createState() => _AnimatedHomePageState();
}

class _AnimatedHomePageState extends State<AnimatedHomePage> {
  MenuItemm currentItem=MenuItems.Home;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width*0.7,
      menuScreen: Builder(
      builder:(context)=>
      DrawerScreen(
      currentItem:currentItem,
      onSelectedItem:(item){
        setState(() =>
          currentItem=item);
          ZoomDrawer.of(context)!.close();

      },
    ),

    ), mainScreen: getScreen(),

    borderRadius: 24.0,
      style: DrawerStyle.defaultStyle,

      showShadow: true,
      drawerShadowsBackgroundColor: Colors.grey[300]!,
      menuBackgroundColor: AppColors.mainColor,
    );
  }

  Widget getScreen(){
    switch(currentItem){
      case MenuItems.Home:return HomePage();
      case MenuItems.BookRide:return CabBookingScreen();
      case MenuItems.BookShikara:return ShikaraBooking();
      case MenuItems.Account:return MyPage();
      default : return HomePage();
    }
  }
}
