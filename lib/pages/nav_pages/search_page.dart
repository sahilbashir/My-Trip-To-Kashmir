
/*
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Search Page"
        ),
      ),
    );
  }
}*/
/*
//import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:velocity_x/velocity_x.dart';
//import 'package:video_player/video_player.dart';

import '../../widgets/app_text.dart';
import '../../widgets/featured_button.dart';
import '../../widgets/home_buttons.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

/*
  final VideoPlayerController videoPlayerController=VideoPlayerController.asset("assets/img/video.mp4");
  ChewieController? chewieController;



  @override
  void initState(){


    chewieController=ChewieController(videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: false,


    );
    super.initState();

  }




  @override
  void dispose(){
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }


*/
  @override
  Widget build(BuildContext context) {

    /*List images =[
      "welcome_two.png",
      "welcome_three.jpg",
      // "welcome_four.jpg",
      "welcome_one.png"
    ];*/

    List images =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/welcome_one.png",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/welcome_two.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/welcome_three.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/welcome_four.jpg"
    ] ;

    List featuredImages1 =[
      "welcome_two.png",
      "welcome_three.jpg",
      // "welcome_four.jpg",
      "welcome_one.png"
    ];

    List featuredTitles1=[
      "Gulmarg",
      "Pahalgam",
      "Sonamarg"
    ];

    List featuredImages2 =[
      "welcome_two.png",
      "welcome_three.jpg",
      // "welcome_four.jpg",
      "welcome_one.png"
    ];
    List featuredTitles2=[
      "Srinagar",
      "Gurez",
      "Aharbal"
    ];


    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight=MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(12),
      color: CupertinoColors.lightBackgroundGray,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,

            color: CupertinoColors.lightBackgroundGray,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                hintText: "Search Anything",
                hintStyle: GoogleFonts.zenAntique(color: Colors.grey),
              ),
            ),
          ),



          10.heightBox,
          Expanded(child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            child: Column(
              children: [







                VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  height: 250,

                  enlargeCenterPage: true,

                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return

                      Image.network(images[index] ,
                     fit: BoxFit.fitWidth,)

                       .box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  },
                ),

                10.heightBox,



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(2, (index) => homeButtons(
                    width:context.screenWidth/2.5,
                    height:context.screenHeight*0.15,

                    icon:index==0? "assets/img/todays_deal.png":"assets/img/flash_deal.png",
                    title:index==0?"To Do's":"Flash Deals",
                  )),

                ),

                VxSwiper.builder(
                  aspectRatio: 16/8,
                  autoPlay: true,
                  height: 250,
                  enlargeCenterPage: true,

                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return Image.network(images[index] ,
                      fit: BoxFit.fitWidth,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  },
                ),

//Featured Destinations

                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text("Featured Destinations",style: GoogleFonts.zenAntique(color: Colors.black,fontSize: 20),)
                  //"Featured Destinations".text.color(Colors.black).size(18).make(),

                ),
                20.heightBox,

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (index) => Column(
                      children: [

                        featuredButton(icon: "assets/img/"+featuredImages1[index],title: featuredTitles1[index]),
                        10.heightBox,
                        featuredButton(icon: "assets/img/"+featuredImages2[index],title: featuredTitles2[index]),
                      ],
                    )).toList(),
                  ),
                ),



              ],
            ),
          ))

        ],
      ),),
    ) ;
  }
}

*/












/*
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Search Page"
        ),
      ),
    );
  }
}*/

//import 'package:chewie/chewie.dart';
//import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/pages/secondary_pages/emergency.dart';
import 'package:mytriptokashmir/pages/secondary_pages/payment.dart';
import 'package:mytriptokashmir/pages/secondary_pages/rate_main.dart';
import 'package:mytriptokashmir/pages/secondary_pages/test.dart';
import 'package:mytriptokashmir/pages/secondary_pages/todo.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:video_player/video_player.dart';
import 'package:mytriptokashmir/pages/secondary_pages/flash_deals.dart';
import '../../misc/colors.dart';
import '../../services/hero_tag.dart';
import '../../widgets/app_text.dart';
import '../../widgets/featured_button.dart';
import '../../widgets/home_buttons.dart';
import '../../widgets2/hero_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

/*
  final VideoPlayerController videoPlayerController=VideoPlayerController.asset("assets/img/video.mp4");
  ChewieController? chewieController;



  @override
  void initState(){


    chewieController=ChewieController(videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: false,


    );
    super.initState();

  }




  @override
  void dispose(){
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }


*/
  @override
  Widget build(BuildContext context) {

    /*List images =[
      "welcome_two.png",
      "welcome_three.jpg",
      // "welcome_four.jpg",
      "welcome_one.png"
    ];*/

    List images =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg01.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg02.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg03.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg04.jpg"
    ] ;

    List featuredImages1 =[
      "welcome_two.png",
      "welcome_three.jpg",
      // "welcome_four.jpg",
      "welcome_one.png"
    ];

    List featuredTitles1=[
      "Gulmarg",
      "Pahalgam",
      "Sonamarg"
    ];

    List featuredImages2 =[
      "welcome_two.png",
      "welcome_three.jpg",
      // "welcome_four.jpg",
      "welcome_one.png"
    ];
    List featuredTitles2=[
      "Srinagar",
      "Gurez",
      "Aharbal"
    ];
    bool expanded=false;


    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight=MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(12),
      color: CupertinoColors.lightBackgroundGray,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          AnimatedContainer(

            alignment: Alignment.center,
            height: 60,

            color: CupertinoColors.lightBackgroundGray,
            duration: Duration(seconds: 1),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon:
                    Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                hintText: "Search Anything",
                hintStyle: GoogleFonts.zenAntique(color: Colors.grey),
              ),
            ),
          ),



          25.heightBox,
          Expanded(child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            child: Column(
              children: [







              /*  VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  height: 250,
                  enlargeCenterPage: true,
                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return
                      Stack(
                        children: [
                          SizedBox.expand(
                            child: HeroWidget(
                              tag: "s",
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                child: Image.network(images[index], fit: BoxFit.cover),
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "   Gulmarg",
                                    style:
                                    GoogleFonts.zeyada(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold
                                    )

                                ),
                              ],
                            ),
                          )
                          //Image.network(images[index] ,
                          //fit: BoxFit.fitWidth,)
                          //.box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make(),
                        ],
                      );
                    //   Image.network(images[index] ,
                    // fit: BoxFit.fitWidth,)
                    // .box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  },
                ),
*/


                Container(
                  //color: Colors.red,
                  height: 350,
                  width: double.maxFinite,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              //Get.to(() => CabBookingScreen());
                            },
                            enableFeedback: true,
                            child: Container(
                              height: 300,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: AppColors.textColor1,
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 20,
                          top: 30,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                "Rate List",
                                textStyle: GoogleFonts.rowdies(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                speed: Duration(milliseconds: 200),
                              ),
                            ],
                            repeatForever: false,
                          )),
                      Positioned(
                        left: 20,
                        top: 90,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              "Knowing these rates will  \n"
                                  "surely help you in kashmir",
                              textStyle: GoogleFonts.rowdies(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                          repeatForever: false,
                          isRepeatingAnimation: true,
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 170,
                        child: Image.asset(
                          "assets/img/rate.png",
                          width: 180,
                          height: 200,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        right: 30,
                        bottom: 15,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            onPressed: () {
                              Get.to(() =>Rate() );
                            },
                            icon: Icon(Icons.arrow_forward),
                            color: AppColors.textColor1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                25.heightBox,



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                  //List.generate(2, (index) =>
                      GestureDetector(
                        onTap:(){
                          Get.to(()=> Test(),transition: Transition.rightToLeft);

                        },
                        child: homeButtons(
                    width:context.screenWidth/2.5,
                    height:context.screenHeight*0.15,

                    icon: "assets/img/todays_deal.png",//:"assets/img/flash_deal.png",
                    title:"To Do's"//:"Flash Deals",
                  ),
                      ),


                    GestureDetector(
                      onTap: (){
                        Get.to(()=> Emergency() ,

                           transition: Transition.rightToLeft);
                      },
                      child: homeButtons(
                          width:context.screenWidth/2.5,
                          height:context.screenHeight*0.15,

                          icon: "assets/img/flash_deal.png",
                          title:"Emergency",
                      ),
                    )
                    ]
                  ),


30.heightBox,
                VxSwiper.builder(
                  aspectRatio: 16/8,
                  autoPlay: true,
                  height: 250,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  //autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return

                      Stack(
                        children: [



                          // buildImage(),





                          SizedBox.expand(

                            child: HeroWidget(
                              tag: "s",
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                child: Image.network(images[index], fit: BoxFit.cover),
                              ),
                            ),
                          ),











                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [


                                //  buildTopText(),
                                //  LatLongWidget(location: location),


                                Text(
                                    "   Pahalgam",
                                    style:
                                    GoogleFonts.zeyada(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold
                                    )
                                  //TextStyle(
                                  //color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                  //fontSize: 20,
                                  //),
                                ),








                              ],
                            ),
                          )









                          //Image.network(images[index] ,
                          //fit: BoxFit.fitWidth,)

                          //.box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make(),

                        ],
                      );



                    //Image.network(images[index] ,
                    //fit: BoxFit.fitWidth,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                  },
                ),

//Featured Destinations

                30.heightBox,
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text("Featured Destinations",style: GoogleFonts.zenAntique(color: Colors.black,fontSize: 20),)
                  //"Featured Destinations".text.color(Colors.black).size(18).make(),

                ),
                20.heightBox,

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (index) => Column(
                      children: [

                        featuredButton(icon: "assets/img/"+featuredImages1[index],title: featuredTitles1[index]),
                        10.heightBox,
                        featuredButton(icon: "assets/img/"+featuredImages2[index],title: featuredTitles2[index]),
                      ],
                    )).toList(),
                  ),
                ),



              ],
            ),
          ))

        ],
      ),),
    ) ;
  }


}

