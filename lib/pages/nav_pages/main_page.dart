

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/pages/home_page.dart';
import 'package:mytriptokashmir/pages/nav_pages/search_page.dart';
import 'package:provider/provider.dart';

import '../../misc/colors.dart';
import '../animated_home_page.dart';
import 'bar_item_page.dart';
import 'my_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {



  Future<void> _handleRefresh()async{
    return await Future.delayed(Duration(seconds: 1));
  }
//List of Navigation Pages
  List pages =[


   AnimatedHomePage(),
  //  HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];
//function to change index of pages
  int currentIndex=0;
  void Tap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    //final ap = Provider.of<AuthProvider>(context, listen: false);
    final items =<Widget>[
      Icon(Icons.home,size: 30,),
      Icon(Icons.bar_chart_sharp),
      Icon(Icons.search),
      Icon(Icons.person)
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body:

      LiquidPullToRefresh(

        onRefresh: _handleRefresh,
color: AppColors.textColor1,
      height: 150,
backgroundColor: Colors.white,
      animSpeedFactor: 2,
      
      showChildOpacityTransition: false,

      child:pages[currentIndex],
      ),
      bottomNavigationBar:

Theme(
  data: Theme.of(context).copyWith(iconTheme:
  IconThemeData(color: Colors.black)),
  child:   CurvedNavigationBar(
    backgroundColor:  Colors.transparent,
    color:Colors.white,
    buttonBackgroundColor:  AppColors.textColor1,
    animationCurve: Curves.easeIn,
    height: 60,
  items:items,
    index: currentIndex,
    onTap: Tap,
  ),
),








      /*BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        onTap: Tap,
     currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,


        items: [
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Bar",icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"MyPage",icon: Icon(Icons.person)),

        ],
      ),

      */

    );
  }
}
