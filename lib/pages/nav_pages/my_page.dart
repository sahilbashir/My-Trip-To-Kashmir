/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/pages/welcome_page.dart';
import 'package:provider/provider.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../misc/colors.dart';
import '../../widgets/app_text.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/details_card.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List profileButtonsList =[
      "My Bookings",
      "My Whishlist",
      "My Cart",
      "Messages",
      "Refer a Friend"
    ];

    List profileButtonsIconList =[
      "assets/img/orders.png",
      "assets/img/heart.png",
      "assets/img/cart.png",
      "assets/img/messages.png",
      "assets/img/arrow.png"
    ];
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(

        body: bgWidget(
          child: SafeArea(

            child: Container(



                padding: const EdgeInsets.all(8),

                child: Column(


                    children: [
                      10.heightBox,
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.edit,color: Colors.white,),
                      ).onTap(() { }),
                      Row(
                        children: [

                        //  Image.network("https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg",width:90,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),

                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            backgroundImage: NetworkImage(ap.userModel.profilePic),
                            radius: 50,
                          ),

                          15.widthBox,
                          Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(ap.userModel.name,style: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22),),
                            //  AppText(text: "Sahil Bashir",color: Colors.white,size: 22,),
                             // AppText(text: "sahilbhat9776@gmail.com",color: Colors.white,size: 18,),
                              Text(ap.userModel.email,style: GoogleFonts.zenAntique(color: Colors.white,fontSize: 18),),
                            ],
                          )),
20.widthBox,
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,

                                  )
                              ),
                              onPressed: (){



                                ap.userSignOut().then(
                                      (value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const WelcomePage(),
                                    ),
                                  ),
                                );
                               // Get.to(()=>WelcomePage(),transition: Transition.circularReveal);
                              }, child: AppText(text: "logout",color: Colors.white,)

                          )

                        ],


                      ),



                      30.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly
                        ,
                        children: [
                          detailsCard(count: "0",title: "Cart Trips",width: context.screenWidth/3.4),
                          detailsCard(count: "0",title: "Whishlisted Trips",width: context.screenWidth/3.4),
                          detailsCard(count: "0",title: " Booked Trips",width: context.screenWidth/3.4),
                        ],
                      ),

                      20.heightBox,
                      ListView
                          .separated(

                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Image.asset(
                                profileButtonsIconList[index], width: 22,),
                            //  title: profileButtonsList[index].text.color(Colors.grey).make(),
                            title:
                            Text(profileButtonsList[index],style: GoogleFonts.zenAntique(
                              fontSize: 18,color: AppColors.bigTextColor
                            ),),
                            //AppText(text: profileButtonsList[index],size: 18,color: AppColors.bigTextColor,),
                            );
                          }, separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.grey,
                        );
                      }, itemCount: profileButtonsList.length)
                          .box
                          .shadowSm
                          .white
                          .rounded
                          .padding(const EdgeInsets.symmetric(horizontal: 16))
                          .make(),







                    ]
                )
            ),
          ),
        )
    );
  }
}


*/

/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../Authentication/provider/auth_provider.dart';
import '../../Authentication/screens/welcome_screen.dart';
import '../../misc/colors.dart';
import '../../widgets/app_text.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/details_card.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List profileButtonsList =[
      "My Bookings",
      "My Whishlist",
      "My Cart",
      "Messages",
      "Refer a Friend"
    ];

    List profileButtonsIconList =[
      "assets/img/orders.png",
      "assets/img/heart.png",
      "assets/img/cart.png",
      "assets/img/messages.png",
      "assets/img/arrow.png"
    ];
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(

        body: bgWidget(
          child: SafeArea(

            child: Container(



                padding: const EdgeInsets.all(8),

                child: Column(


                    children: [
                      10.heightBox,
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.edit,color: Colors.white,),
                      ).onTap(() { }),
                      Row(
                        children: [

                          // Image.network("https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg",width:90,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),





                          CircleAvatar(
                            backgroundColor: AppColors.textColor1,
                            backgroundImage: NetworkImage(ap.userModel.profilePic),
                            radius: 50,
                          ),

                          15.widthBox,
                          Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(ap.userModel.name,style: GoogleFonts.zenAntique(color: Colors.white,fontSize: 22),),
                              //  AppText(text: "Sahil Bashir",color: Colors.white,size: 22,),
                              // AppText(text: "sahilbhat9776@gmail.com",color: Colors.white,size: 18,),
                              Text(ap.userModel.email,style: GoogleFonts.zenAntique(color: Colors.white,fontSize: 18),),
                            ],
                          )),
                          20.widthBox,
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,

                                  )
                              ),
                              onPressed: (){

                                ap.userSignOut().then(
                                      (value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const WelcomeScreen(),
                                    ),
                                  ),
                                );






                                // Get.to(()=>WelcomePage(),transition: Transition.circularReveal);
                              }, child: AppText(text: "logout",color: Colors.white,)

                          )

                        ],


                      ),



                      30.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly
                        ,
                        children: [
                          detailsCard(count: "0",title: "Cart Trips",width: context.screenWidth/3.4),
                          detailsCard(count: "0",title: "Whishlisted Trips",width: context.screenWidth/3.4),
                          detailsCard(count: "0",title: " Booked Trips",width: context.screenWidth/3.4),
                        ],
                      ),

                      20.heightBox,
                      ListView
                          .separated(

                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Image.asset(
                                profileButtonsIconList[index], width: 22,),
                              //  title: profileButtonsList[index].text.color(Colors.grey).make(),
                              title:
                              Text(profileButtonsList[index],style: GoogleFonts.zenAntique(
                                  fontSize: 18,color: AppColors.bigTextColor
                              ),),
                              //AppText(text: profileButtonsList[index],size: 18,color: AppColors.bigTextColor,),
                            );
                          }, separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.grey,
                        );
                      }, itemCount: profileButtonsList.length)
                          .box
                          .shadowSm
                          .white
                          .rounded
                          .padding(const EdgeInsets.symmetric(horizontal: 16))
                          .make(),







                    ]
                )
            ),
          ),
        )
    );
  }
}




*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mytriptokashmir/pages/secondary_pages/shikara_cart.dart';
import 'package:mytriptokashmir/widgets/my_popup_menu_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/pages/secondary_pages/booking.dart';

import 'package:provider/provider.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../Authentication/provider/auth_provider.dart';
import '../../Authentication/screens/welcome_screen.dart';
import '../../misc/colors.dart';
import '../../widgets/app_text.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/details_card.dart';
import '../secondary_pages/cart.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  int count1=0;
  int count2=0;
  int count3=0;
  _setData() async{
   
   var num1= await FirebaseFirestore.instance.collection("Bookings").get();
   var num2= await FirebaseFirestore.instance.collection("CarBookings").get();
   var num3= await FirebaseFirestore.instance.collection("ShikaraBookings").get();
   setState(() {
     count1=num1.size;
     count2=num2.size;
     count3=num3.size;
   });
 }


 @override
 void initState(){
    _setData();
    super.initState();
 }
  @override
  Widget build(BuildContext context) {
    List profileButtonsList = [
      "My Bookings",
      "My Whishlist",
      "My Cart",
      "Messages",
      "Refer a Friend"
    ];

    List profileButtonsIconList = [
      "assets/img/orders.png",
      "assets/img/heart.png",
      "assets/img/cart.png",
      "assets/img/messages.png",
      "assets/img/arrow.png"
    ];

    List pages = ["Booking()", "Cart()", "Booking()", "Cart()", "Cart()"];
    final ap = Provider.of<AuthProvider>(context, listen: false);




    return Scaffold(
        body: bgWidget(
      child: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              10.heightBox,
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ).onTap(() {}),
              Row(
                children: [
                  // Image.network("https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg",width:90,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),

                  MyPopupMenu2(
                    child: CircleAvatar(
                      key: GlobalKey(),
                      backgroundColor: AppColors.textColor1,
                      backgroundImage: NetworkImage(ap.userModel.profilePic),
                      radius: 50,
                    ),
                  ),

                  15.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ap.userModel.name,
                        style: GoogleFonts.zenAntique(
                            color: Colors.white, fontSize: 22),
                      ),
                      //  AppText(text: "Sahil Bashir",color: Colors.white,size: 22,),
                      // AppText(text: "sahilbhat9776@gmail.com",color: Colors.white,size: 18,),
                      Text(
                        ap.userModel.email,
                        style: GoogleFonts.zenAntique(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )),
                  20.widthBox,
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                        color: Colors.white,
                      )),
                      onPressed: () {
                        ap.userSignOut().then(
                              (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WelcomeScreen(),
                                ),
                              ),
                            );

                        // Get.to(()=>WelcomePage(),transition: Transition.circularReveal);
                      },
                      child: AppText(
                        text: "logout",
                        color: Colors.white,
                      ))
                ],
              ),

              30.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: count1.toString(),
                      title: "Booked Trips",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: count2.toString(),
                      title: "Car Rides",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: count3.toString(),
                      title: "Shikara Rides",
                      width: context.screenWidth / 3.4),
                ],
              ),

              20.heightBox,

              /*   ListView
                          .separated(

                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                Get.to(()=>pages[index]);
                              },
                              child: ListTile(
                                leading: Image.asset(
                                  profileButtonsIconList[index], width: 22,),
                              //  title: profileButtonsList[index].text.color(Colors.grey).make(),
                              title:
                              Text(profileButtonsList[index],style: GoogleFonts.zenAntique(
                                fontSize: 18,color: AppColors.bigTextColor
                              ),),
                              //AppText(text: profileButtonsList[index],size: 18,color: AppColors.bigTextColor,),
                              ),
                            );
                          }, separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.grey,
                        );
                      }, itemCount: profileButtonsList.length)
                          .box
                          .shadowSm
                          .white
                          .rounded
                          .padding(const EdgeInsets.symmetric(horizontal: 16))
                          .make(),


*/

              GestureDetector(
                onTap: () {
                  Get.to(() => Booking(), transition: Transition.zoom);
                },
                child: Container(
                  height: 70,
                  width: double.maxFinite,
                  //  color: Colors.white,
                  child: Row(
                    children: [
                      10.widthBox,
                      Image.asset(
                        "assets/img/orders.png",
                        width: 30,
                      ),
                      40.widthBox,
                      Text(
                        "My Bookings",
                        style: GoogleFonts.zenAntique(
                            fontSize: 18, color: AppColors.bigTextColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: AppColors.textColor1),
                  ),
                ),
              ),

              5.heightBox,

              //

              GestureDetector(
                onTap: (){
                  Get.to(()=>ShikaraCart(),transition: Transition.zoom);
                },
                child: Container(
                  height: 70,
                  width: double.maxFinite,
                  //  color: Colors.white,
                  child: Row(
                    children: [
                      10.widthBox,
                      Image.asset(
                        "assets/img/heart.png",
                        width: 30,
                      ),
                      40.widthBox,
                      Text(
                        "Shikara Rides",
                        style: GoogleFonts.zenAntique(
                            fontSize: 18, color: AppColors.bigTextColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: AppColors.textColor1),
                  ),
                ),
              ),

              5.heightBox,

              //

              GestureDetector(
                onTap: () {
                  Get.to(() => Cart(), transition: Transition.zoom);
                },
                child: Container(
                  height: 70,
                  width: double.maxFinite,
                  //  color: Colors.white,
                  child: Row(
                    children: [
                      10.widthBox,
                      Image.asset(
                        "assets/img/cart.png",
                        width: 30,
                      ),
                      40.widthBox,
                      Text(
                        "Car Rides",
                        style: GoogleFonts.zenAntique(
                            fontSize: 18, color: AppColors.bigTextColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: AppColors.textColor1),
                  ),
                ),
              ),

              5.heightBox,

              //

              Container(
                height: 70,
                width: double.maxFinite,
                //  color: Colors.white,
                child: Row(
                  children: [
                    10.widthBox,
                    Image.asset(
                      "assets/img/arrow.png",
                      width: 30,
                    ),
                    40.widthBox,
                    Text(
                      "Refer a Friend",
                      style: GoogleFonts.zenAntique(
                          fontSize: 18, color: AppColors.bigTextColor),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: AppColors.textColor1),
                ),
              ),
            ])),
      ),
    ));
  }





}
