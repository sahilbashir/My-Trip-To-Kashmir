/*import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:provider/provider.dart';

import '../misc/colors.dart';

class DrawerScreen extends StatelessWidget {
   DrawerScreen({super.key});

  @override




  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Container(

      color: AppColors.mainColor,
      child: Padding(

        padding: EdgeInsets.only(top: 70,left: 5,bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 50,),
         /*   Container(

              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg"),
                  )
              ),
            ),
*/



            CircleAvatar(
              backgroundColor: Colors.purple,
              backgroundImage: NetworkImage(ap.userModel.profilePic),
              radius: 50,
            ),
            SizedBox(width: 10,),
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText(ap.userModel.name,textStyle: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,),speed: Duration(milliseconds: 200)),
        
        TyperAnimatedText(ap.userModel.name,textStyle: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
          ],
          totalRepeatCount: 1,
      
          ),
SizedBox(height: 100,),



            Column(
              children: [
                NewRow(icon: Icons.apps, text: "Home "),
                SizedBox(height: 25,),


                NewRow(icon: Icons.bar_chart_outlined, text: "Bar"),
                SizedBox(height: 25,),



                NewRow(icon: Icons.search, text: "Search "),
                SizedBox(height: 25,),




                NewRow(icon: Icons.person, text: "Profile"),
                SizedBox(height: 25,),



              ],
            )
          ],


        ),



      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

   const NewRow({required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Icon(icon,color: Colors.white,),
        SizedBox(width: 20,),
        //Text(text,style: TextStyle(color: Colors.white,),)
      
      AnimatedTextKit(animatedTexts: [
        TyperAnimatedText(text,textStyle: GoogleFonts.zenAntique(color: Colors.white,),speed: Duration(milliseconds: 200))
      ],


      )
      ],
    );
  }
}
*/
/*
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/pages/nav_pages/my_page.dart';
import 'package:provider/provider.dart';

import '../../Authentication/provider/auth_provider.dart';
import '../../misc/colors.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key});

  @override




  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Container(

      color: AppColors.mainColor,
      child: Padding(

        padding: EdgeInsets.only(top: 70,left: 5,bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 50,),
            /* Container(

              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg"),
                  )
              ),
            ),*/

            CircleAvatar(
              backgroundColor: AppColors.textColor1,
              backgroundImage: NetworkImage(ap.userModel.profilePic),
              radius: 40,
            ),

            SizedBox(width: 10,),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText(ap.userModel.name,textStyle: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,),speed: Duration(milliseconds: 200)),

              TyperAnimatedText(ap.userModel.name,textStyle: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
            ],
              totalRepeatCount: 1,

            ),
            SizedBox(height: 100,),



            Column(
              children: [
                GestureDetector(
                    onTap: (){
                      Get.to(()=>MyPage());
                    },
                    child: NewRow(icon: Icons.apps, text: "Account ")),
                SizedBox(height: 25,),


                NewRow(icon: Icons.bar_chart_outlined, text: "Bar"),
                SizedBox(height: 25,),



                NewRow(icon: Icons.search, text: "Search "),
                SizedBox(height: 25,),




                NewRow(icon: Icons.person, text: "Profile"),
                SizedBox(height: 25,),



              ],
            )
          ],


        ),



      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
        children: [
          Icon(icon,color: Colors.white,),
          SizedBox(width: 20,),
          //Text(text,style: TextStyle(color: Colors.white,),)

          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(text,textStyle: GoogleFonts.zenAntique(color: Colors.white,),speed: Duration(milliseconds: 200))
          ],


          )
        ],
      );
  }
}
*/





















import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/widgets/Menu_item.dart';
import 'package:provider/provider.dart';


class MenuItems{
static const Account=MenuItemm("Account", Icons.person);
  static const Home=MenuItemm("Home",Icons.home_filled);
  static const BookRide=MenuItemm("Book Ride",Icons.car_rental);
  static const BookShikara = MenuItemm("Book Shikara",Icons.directions_boat);

  static const all=<MenuItemm>[
    Account,
    Home,
    BookRide,
      BookShikara,
  ];

}

class MenuItemm {

  final String title;
  final IconData icon;
  const MenuItemm(this.title,this.icon);
}


class DrawerScreen extends StatelessWidget {
  final MenuItemm currentItem;
  final ValueChanged<MenuItemm> onSelectedItem;
  const DrawerScreen({Key? key,required this.currentItem,required this.onSelectedItem}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50,),
            CircleAvatar(
              backgroundColor: AppColors.textColor1,
              backgroundImage: NetworkImage(ap.userModel.profilePic),
              radius: 40,
            ),

            SizedBox(width: 10,),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText(ap.userModel.name,textStyle: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,),speed: Duration(milliseconds: 200)),

              TyperAnimatedText(ap.userModel.name,textStyle: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
            ],
              totalRepeatCount: 1,

            ),
              Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );

  }
  Widget buildMenuItem(MenuItemm item)=>ListTileTheme(
    shape: const RoundedRectangleBorder(),
    iconColor: Colors.white,
    selectedColor: Colors.black,
    textColor: Colors.white,
    selectedTileColor: Colors.white,
    child: ListTile(
      shape: RoundedRectangleBorder(),
      selectedTileColor: Colors.black26,
      selected: currentItem==item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title,style: GoogleFonts.rowdies(),),
      onTap: ()=>onSelectedItem(item),
    ),
  );
}
