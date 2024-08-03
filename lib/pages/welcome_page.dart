


/*
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/Authentication/screens/home_screen.dart';
import 'package:mytriptokashmir/Authentication/screens/register_screen.dart';
import 'package:mytriptokashmir/cubit/app_cubits.dart';
import 'package:mytriptokashmir/pages/nav_pages/main_page.dart';
import 'package:mytriptokashmir/pages/nav_pages/my_page.dart';
import 'package:provider/provider.dart';

import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:velocity_x/velocity_x.dart';

//import '../cubit/app_cubits.dart';
import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //assets of the welcome screen

  bool isFinished=false;
  List images =[
    "welcome_two.png",

    "welcome-two.png",
    "welcome-one.png"
   // "welcome_three.jpg",
   // "welcome_four.jpg",
    //"welcome_one.png"
  ];

//Top Text in Welcome Screens
  List text1 =[
    "T r i p s",
    "T r e k s",
   // "Hiking",
    "A d v e n t u r e s"
  ];

  // 2nd heading in welcome screen
  List text2 =[
    "M o u n t a i n s",
    "J u n g l e s",
   // "Waterfalls",
    "R i v e r s"
  ];

  //captions in welcome screen
  List captions=[
    "Mountain hikes give you an incredible sense of Freedom along with endurance tests.",
"Taking a break from the concrete jungle to explore the real one.",
    //"Run wild and free like a waterfall.",
    "Adventure is worthwhile."
  ];


  @override
  Widget build(BuildContext context) {
    //bool isFinished=false;
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(

      // building a scrollabe vertical pageview
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){


            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img/${ images[index]}'
                ),
                fit: BoxFit.cover
              )
              ),

              child: Container(
                margin: const EdgeInsets.only(top: 100,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    AnimatedTextKit(animatedTexts:[
 WavyAnimatedText( text1[index],
   textStyle: GoogleFonts.caveat(
     color: Color(0xFF989acd),
     fontSize: 50,fontWeight: FontWeight.bold
   ),
     //textStyle: const TextStyle(color: Color(0xFF989acd),
     //fontSize: 30,fontWeight: FontWeight.bold
 //),
 speed: const Duration(milliseconds: 200)
 ),

                      WavyAnimatedText( text2[index],
                          textStyle: GoogleFonts.caveat(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50
                          ),
                         // textStyle: const TextStyle(color: Colors.black,
                           //   fontSize: 30,fontWeight: FontWeight.bold),
                          speed: const Duration(milliseconds: 200)
                      ),


],
                      repeatForever: true,
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,

              ),
                    const SizedBox(height: 20,),
                    Container(
                      width: 250,


                      child:
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(captions[index],
                            textStyle: GoogleFonts.caveat(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            //textStyle: const TextStyle(
                            //color: Colors.grey,
                            //fontWeight: FontWeight.bold,
                            //fontSize: 14,

                          //),
                            speed: const Duration(milliseconds: 100),
                            curve: Curves.fastOutSlowIn,
                          )
                        ],

                      ),

                      //AppText(
                        //text: captions[index],
                        //color: AppColors.textColor2,
                        //size: 14,
                      //),
                    ),

                    SizedBox(height: 40,),
SizedBox(height: 450,),








                       Visibility(
                         visible: index==index.length+1?true:false,
                         child: Container(
                          //height: 120,
                          width: MediaQuery.of(context).size.width*0.85,
                          //padding: const EdgeInsets.symmetric(horizontal: 40),



                           //Added

                          child:

                          SwipeableButtonView(

                            isFinished: isFinished,
                            onWaitingProcess: (){
                              Future.delayed(Duration(seconds: 1),(){
                                setState(() {
                                  isFinished=true;
                                });
                              });
                            },
                            onFinish: () async {
                              // await Get.to(()=>MyPage(),);
                              BlocProvider.of<AppCubits>(context).getData();



                              setState(() {
                                isFinished = false;
                              });



                         //     BlocProvider.of<AppCubits>(context).getData();







                              if (ap.isSignedIn == true) {
                                await ap.getDataFromSP().whenComplete(
                                      () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MainPage(),
                                    ),
                                  ),
                                );
                              } else {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RegisterScreen(),
                                  ),
                                );
                              }
                            },

                            activeColor: AppColors.mainColor,
                            buttonWidget: Container(
                              child: Icon(Icons.arrow_forward_ios_rounded,

                                color: AppColors.mainColor,
                              ),
                            ),
                            buttonText: "Swipe ",
                            buttontextstyle:

                            GoogleFonts.caveat(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold)
                            //TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),

                          ),



                      ),
                       ),














                    /*GestureDetector(
                      onTap: (){
                        BlocProvider.of<AppCubits>(context).getData();
                      },
                      child: Container(
                          width:200,
                          child: Row(children:[

                          ResponsiveButton(width: 100,)

                       /* Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                          child: SwipeableButtonView(onFinish: (){
                            BlocProvider.of<AppCubits>(context).getData();

                            setState(() {
                              isFinished=false;
                            });
                          },
                              onWaitingProcess: (){
                            Future.delayed(Duration(seconds: 1),(){
                              setState(() {
                                isFinished=true;
                              });
                            });
                              },
                              activeColor: AppColors.mainColor,
                              buttonWidget: Container(
                                child: Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.grey,
                                ),
                              ),
                              buttonText: "Slide "),
                        )*/
                          ]
                          )
                      ),
                    )*/
                  ],
                ),

                    Column(
                      children: List.generate(images.length, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          width: 8,
                          height:index==indexDots? 25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                          ),
                        );
                      }),
                    )
                  ],
                ),

              ),
            );

      }),
    );
  }
}
*/





import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/extra.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:mytriptokashmir/Authentication/screens/register_screen.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/Authentication/screens/home_screen.dart';

import '../cubit/app_cubits.dart';
import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //assets of the welcome screen

  bool isFinished=false;
  List images =[
    "welcome_two.png",

    "welcome-two.png",
    "welcome-one.png"
    // "welcome_three.jpg",
    // "welcome_four.jpg",
    //"welcome_one.png"
  ];

//Top Text in Welcome Screens
  List text1 =[
    "T r i p s",
    "T r e k s",
    // "Hiking",
    "A d v e n t u r e s"
  ];

  // 2nd heading in welcome screen
  List text2 =[
    "M o u n t a i n s",
    "J u n g l e s",
    // "Waterfalls",
    "R i v e r s"
  ];

  //captions in welcome screen
  List captions=[
    "Mountain hikes give you an incredible sense of Freedom along with endurance tests.",
    "Taking a break from the concrete jungle to explore the real one.",
    //"Run wild and free like a waterfall.",
    "Adventure is worthwhile."
  ];


  @override
  Widget build(BuildContext context) {


    final ap = Provider.of<AuthProvider>(context, listen: false);
    //bool isFinished=false;
    return Scaffold(

      // building a scrollabe vertical pageview
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){


            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/img/${ images[index]}'
                      ),
                      fit: BoxFit.cover
                  )
              ),

              child: Container(
                margin: const EdgeInsets.only(top: 100,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        AnimatedTextKit(animatedTexts:[
                          WavyAnimatedText( text1[index],
                              textStyle: GoogleFonts.caveat(
                                  color: Color(0xFF989acd),
                                  fontSize: 50,fontWeight: FontWeight.bold
                              ),
                              //textStyle: const TextStyle(color: Color(0xFF989acd),
                              //fontSize: 30,fontWeight: FontWeight.bold
                              //),
                              speed: const Duration(milliseconds: 200)
                          ),

                          WavyAnimatedText( text2[index],
                              textStyle: GoogleFonts.caveat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50
                              ),
                              // textStyle: const TextStyle(color: Colors.black,
                              //   fontSize: 30,fontWeight: FontWeight.bold),
                              speed: const Duration(milliseconds: 200)
                          ),


                        ],
                          repeatForever: true,
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,

                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 250,


                          child:
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(captions[index],
                                textStyle: GoogleFonts.caveat(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                                //textStyle: const TextStyle(
                                //color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                                //fontSize: 14,

                                //),
                                speed: const Duration(milliseconds: 100),
                                curve: Curves.fastOutSlowIn,
                              )
                            ],

                          ),

                          //AppText(
                          //text: captions[index],
                          //color: AppColors.textColor2,
                          //size: 14,
                          //),
                        ),

                        SizedBox(height: 40,),
                        SizedBox(height: 450,),








                        Visibility(
                          visible: index==index.length+1?true:false,
                          child: Container(
                            //height: 120,
                            width: MediaQuery.of(context).size.width*0.85,
                            //padding: const EdgeInsets.symmetric(horizontal: 40),
                            child:

                            SwipeableButtonView(

                                isFinished: isFinished,
                                onWaitingProcess: (){
                                  Future.delayed(Duration(seconds: 1),(){
                                    setState(() {
                                      isFinished=true;
                                    });
                                  });
                                },
                                onFinish: () async {
                                  // await Get.to(()=>MyPage(),);
                                  BlocProvider.of<AppCubits>(context).getData();
                                  setState(() {
                                    isFinished = false;
                                  });
                                  /*if (ap.isSignedIn == true) {
            await ap.getDataFromSP().whenComplete(
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => const

            Extra()
            //HomeScreen(),
            ),
            ),
            );
            } else {
            Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => const RegisterScreen(),
            ),
            );
            }
*/



















                                },

                                activeColor: AppColors.mainColor,
                                buttonWidget: Container(
                                  child: Icon(Icons.arrow_forward_ios_rounded,

                                    color: AppColors.mainColor,
                                  ),
                                ),
                                buttonText: "Swipe ",
                                buttontextstyle:

                                GoogleFonts.caveat(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold)
                              //TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),

                            ),



                          ),
                        ),














                        /*GestureDetector(
                      onTap: (){
                        BlocProvider.of<AppCubits>(context).getData();
                      },
                      child: Container(
                          width:200,
                          child: Row(children:[

                          ResponsiveButton(width: 100,)

                       /* Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                          child: SwipeableButtonView(onFinish: (){
                            BlocProvider.of<AppCubits>(context).getData();

                            setState(() {
                              isFinished=false;
                            });
                          },
                              onWaitingProcess: (){
                            Future.delayed(Duration(seconds: 1),(){
                              setState(() {
                                isFinished=true;
                              });
                            });
                              },
                              activeColor: AppColors.mainColor,
                              buttonWidget: Container(
                                child: Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.grey,
                                ),
                              ),
                              buttonText: "Slide "),
                        )*/
                          ]
                          )
                      ),
                    )*/
                      ],
                    ),

                    Column(
                      children: List.generate(images.length, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          width: 8,
                          height:index==indexDots? 25:8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                          ),
                        );
                      }),
                    )
                  ],
                ),

              ),
            );

          }),
    );
  }
}
