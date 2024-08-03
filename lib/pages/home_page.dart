/*
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/cubit/app_cubit_states.dart';
import 'package:mytriptokashmir/cubit/app_cubits.dart';
import 'package:mytriptokashmir/pages/see_all.dart';
import 'package:provider/provider.dart';

import '../misc/colors.dart';
import '../widgets/app_text.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  var images={
    "welcome_one.png":"Trekking",
    "welcome_two.png":"Hiking",
    "welcome_three.jpg":"Adventure",
    "welcome_four.jpg":"Rivers"
  };
  bool isVisible=false;

//Added for drawer
  //GlobalKey<ScaffoldState> _globalKey=GlobalKey<ScaffoldState>();
  @override



  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    TabController _tabController = TabController(length: 3,vsync: this);
    return Scaffold(
        //key: _globalKey,
       /* drawer: Drawer(
          child: ListView(
            children: [
              MyHeaderDrawer(),
            ],
          ),
        ),*/
body:

             // transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(isDrawerOpen?0.85:1.00)..rotateZ(isDrawerOpen?-50:0),
              //duration: Duration(milliseconds: 200),
               SingleChildScrollView(
                child: BlocBuilder<AppCubits,CubitStates>(
                  builder: (context,state){
                    if (state is LoadedState){
                      var info= state.places;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Menu
                          Container(
                            padding: const EdgeInsets.only(top: 70,left: 20),
                            child: Row(
                              children: [

                                //GestureDetector(
                                  //  onTap:()=>
                                      // _globalKey.currentState?.openDrawer();

IconButton(onPressed: ()=>ZoomDrawer.of(context)!.toggle(), icon: Icon(Icons.menu,size: 30,color: Colors.black54))



                               // )
                               ,
                                Expanded(child: Container()),
                                Container(
                                  width: 50,
                                  height: 50,


                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),

                                    color: Colors.white.withOpacity(0.5),
                                    image:DecorationImage( image:NetworkImage(
                                     // "https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg"
                                    ap.userModel.profilePic

                                    ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(height: 20,),
                          //Discover Text
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child:

                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText("Discover ...",

                                   textStyle:GoogleFonts.rowdies(
                                     fontSize: 30,
                                     color: AppColors.textColor1,
                                     fontWeight: FontWeight.normal
                                   )
                              //  TextStyle(
                                    //fontSize: 30,
                                    //color: Colors.black,
                                    //fontWeight: FontWeight.bold
                                //)
                              ,
                                    speed: Duration(milliseconds: 200)
                                ),
                              ],
                              repeatForever: true,
                            ),
                            //AppLargeText(text: "Discover ...",),

                          ),

                          SizedBox(height: 20,),

                          //Tabbar
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(
                                labelPadding: const EdgeInsets.only(left: 20,right: 20),
                                controller: _tabController,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                isScrollable: true,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicator: CircleTabIndicator(color: AppColors.mainColor,radius: 4),
                                tabs: [
                                  Tab(text: "Places",),
                                  Tab(text: "Destinations"),
                                  Tab(text: "Activities")
                                ],
                              ),
                            ),
                          ),
//TabView
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            height: 300,
                            width: double.maxFinite,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                ListView.builder(
                                  itemCount:info.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, int index) {
                                    return  GestureDetector(
                                      onTap: (){
                                        BlocProvider.of<AppCubits>(context).detailPage(info[index]);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 15,top: 10),
                                        width: 200,
                                        height: 300,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer"+info[index].img),

                                              //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+info[index].img),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    );
                                  },

                                ),
                                //    Text("There"),
                                //  Text("Bye")




                                ListView.builder(
                                  itemCount:info.length,
                                  scrollDirection: Axis.horizontal,
                                  reverse: false,
                                  itemBuilder: (BuildContext context, int index) {
                                    return  GestureDetector(
                                      onTap: (){
                                        BlocProvider.of<AppCubits>(context).detailPage(info[index]);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 15,top: 10),
                                        width: 200,
                                        height: 300,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer"+info[index].img),
                                              //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+info[index].img),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    );
                                  },

                                ),








                                ListView.builder(
                                  itemCount:info.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, int index) {
                                    return  GestureDetector(
                                      onTap: (){
                                        BlocProvider.of<AppCubits>(context).detailPage(info[index]);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 15,top: 10),
                                        width: 200,
                                        height: 300,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer"+info[index].img),
                                              //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+info[index].img),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    );
                                  },

                                ),





                              ],
                            ),
                          ),

                          SizedBox(height: 20,),

                          Container(
                            margin: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                AnimatedTextKit(animatedTexts: [

                                  TyperAnimatedText("Explore more",
                                    textStyle:
                                        GoogleFonts.rowdies(
                                          color: AppColors.textColor1,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 22
                                        ),
                   // TextStyle(
                                      //color: Colors.black,
                                      //fontSize: 22,
                                      //fontWeight: FontWeight.bold
                                  //),
                                    speed: Duration(milliseconds: 200),

                                  ),
                                ],
                                  repeatForever: true,

                                ),


                                //   AppLargeText(text: "Explore more",size: 22,),
                                GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isVisible=!isVisible;
                                      });
                                    },
                                    child: AppText(text: isVisible==false?"See all":"See less",color: AppColors.textColor1,)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),

                          //Image Listview

                          Container(
                            height: 120,
                            width: double.maxFinite,
                            margin: const EdgeInsets.only(left: 20),



                            child: GestureDetector(
                              onTap: (){
                                Get.to(SeeAll(), );
                    },
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (_,index){
                                    return Container(
                                      margin: const EdgeInsets.only(right: 30),
                                      child: Column(
                                        children: [
                                          Container(
                                            // margin: const EdgeInsets.only(right: 50),
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Colors.white,
                                                image: DecorationImage(
                                                    image: AssetImage("assets/img/"+images.keys.elementAt(index)),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            child:
                                            Text(images.values.elementAt(index),

                                            style: GoogleFonts.caveat(
                                              color: AppColors.textColor2,
                                              fontSize: 22
                                            ),
                                            )
                                            //AppText(
                                              //text: images.values.elementAt(index),
                                              //color: AppColors.textColor2,
                                              //size: 20,
                                            //),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),





                          ),


                          SizedBox(height: 10,),

                          Visibility(
                            visible: isVisible,
                            child: Container(
                              height: 120,
                              width: double.maxFinite,
                              margin: const EdgeInsets.only(left: 20),



                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (_,index){
                                    return Container(
                                      margin: const EdgeInsets.only(right: 30),
                                      child: Column(
                                        children: [
                                          Container(
                                            // margin: const EdgeInsets.only(right: 50),
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Colors.white,
                                                image: DecorationImage(
                                                    image: AssetImage("assets/img/"+images.keys.elementAt(index)),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            child: AppText(
                                              text: images.values.elementAt(index),
                                              color: AppColors.textColor2,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),





                            ),
                          ),



















                        ],
                      );
                    }else{
                      return Container();
                    }
                  },
                ),
              ),



    );

    ;
  }
}



class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color:color,radius:radius);
  }

}

class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset,
      ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint=Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset=Offset(configuration.size!.width/2 -radius/2,configuration.size!.height-radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}

*/

import 'package:mytriptokashmir/pages/secondary_pages/cab_booking_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/cubit/app_cubit_states.dart';
import 'package:mytriptokashmir/cubit/app_cubits.dart';
import 'package:mytriptokashmir/pages/secondary_pages/see_all.dart';
import 'package:mytriptokashmir/pages/secondary_pages/shikara_booking_page.dart';
import 'package:mytriptokashmir/widgets/my_popup_menu.dart';
import 'package:provider/provider.dart';
import '../Authentication/provider/auth_provider.dart';
import '../misc/colors.dart';
import '../widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool expanded = false;
  var images = {
    "welcome_one.png": "Trekking",
    "welcome_two.png": "Hiking",
    "welcome_three.jpg": "Adventure",
    "welcome_four.jpg": "Rivers"
  };
  bool isVisible = true;
  double pad = 20;

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<AppCubits, CubitStates>(
          builder: (context, state) {
            if (state is LoadedState) {
              var info = state.places;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Menu
                  Container(
                    padding: const EdgeInsets.only(top: 70, left: 20),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () => ZoomDrawer.of(context)!.toggle(),
                            icon: Icon(Icons.menu,
                                size: 30, color: Colors.black54)),
                        Expanded(child: Container()),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: MyPopupMenu(
                            child: CircleAvatar(
                              key: GlobalKey(),
                              backgroundColor: AppColors.textColor1,
                              backgroundImage:
                                  NetworkImage(ap.userModel.profilePic),
                              radius: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //Discover Text
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText("Discover ...",
                            textStyle: GoogleFonts.rowdies(
                                fontSize: 30,
                                color: AppColors.textColor1,
                                fontWeight: FontWeight.normal)
                            //  TextStyle(
                            //fontSize: 30,
                            //color: Colors.black,
                            //fontWeight: FontWeight.bold
                            //)
                            ,
                            speed: Duration(milliseconds: 200)),
                      ],
                      repeatForever: false,
                    ),
                    //AppLargeText(text: "Discover ...",),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Tabbar
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        labelPadding:
                            const EdgeInsets.only(left: 20, right: 20),
                        controller: _tabController,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: CircleTabIndicator(
                            color: AppColors.mainColor, radius: 4),
                        tabs: [
                          Tab(
                            text: "Places",
                          ),
                          Tab(text: "Destinations"),
                          Tab(text: "Activities")
                        ],
                      ),
                    ),
                  ),
//TabView
                  AnimatedContainer(
                    curve: Curves.easeInOutSine,
                    padding: const EdgeInsets.only(left: 20),
                    height: expanded ? 300 : 100,
                    width: double.maxFinite,
                    duration: Duration(seconds: 1),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView.builder(
                          itemCount: info.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<AppCubits>(context)
                                        .detailPage(info[index]);
                                  },
                                  child: AnimatedContainer(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10),
                                    width: expanded ? 200 : 150,
                                    height: 500,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://sahilbashir.github.io/MyTripToKashmirServer" +
                                                  info[index].img),

                                          //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+info[index].img),
                                          fit: BoxFit.cover,
                                        )),
                                    duration: Duration(seconds: 1),
                                  ),
                                ),
                                Align(
                                    //left:70,top:50,
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                          left: pad,
                                        ),
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                expanded = !expanded;
                                                if (expanded == false) {
                                                  isVisible = true;
                                                  pad = 10;
                                                } else {
                                                  isVisible = false;
                                                  pad = 30;
                                                }
                                              });
                                              print(expanded);
                                            },
                                            child: Text(
                                              info[index].name,
                                              style: GoogleFonts.piedra(
                                                  fontSize: 32,
                                                  color: Colors.white),
                                            ))))
                              ],
                            );
                          },
                        ),
                        //    Text("There"),
                        //  Text("Bye")

                        ListView.builder(
                          itemCount: info.length,
                          scrollDirection: Axis.horizontal,
                          reverse: false,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                BlocProvider.of<AppCubits>(context)
                                    .detailPage(info[index]);
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: 15, top: 10),
                                width: 200,
                                height: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://sahilbashir.github.io/MyTripToKashmirServer" +
                                              info[index].img),
                                      //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+info[index].img),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            );
                          },
                        ),

                        ListView.builder(
                          itemCount: info.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                BlocProvider.of<AppCubits>(context)
                                    .detailPage(info[index]);
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: 15, top: 10),
                                width: 200,
                                height: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://sahilbashir.github.io/MyTripToKashmirServer" +
                                              info[index].img),
                                      //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+info[index].img),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              "Explore more",
                              textStyle: GoogleFonts.rowdies(
                                  color: AppColors.textColor1,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22),
                              // TextStyle(
                              //color: Colors.black,
                              //fontSize: 22,
                              //fontWeight: FontWeight.bold
                              //),
                              speed: Duration(milliseconds: 200),
                            ),
                          ],
                          repeatForever: false,
                        ),

                        //   AppLargeText(text: "Explore more",size: 22,),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            child: AppText(
                              text: isVisible == false ? "See all" : "See less",
                              color: AppColors.textColor1,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Image Listview

                  Container(
                    height: 120,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          SeeAll(),
                        );
                      },
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: Column(
                                children: [
                                  Container(
                                    // margin: const EdgeInsets.only(right: 50),
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage("assets/img/" +
                                                images.keys.elementAt(index)),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      child: Text(
                                    images.values.elementAt(index),
                                    style: GoogleFonts.caveat(
                                        color: AppColors.textColor2,
                                        fontSize: 22),
                                  ))
                                ],
                              ),
                            );
                          }),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
//Book Rides
                  Visibility(
                    visible: isVisible,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "   Book Rides",
                          textStyle: GoogleFonts.rowdies(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textColor1),
                          speed: Duration(milliseconds: 200),
                        ),
                      ],
                      repeatForever: false,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Rides card
                  Visibility(
                    visible: isVisible,
                    child: Container(
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
                                  Get.to(() => CabBookingScreen());
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
                                    "Looking for Cab?",
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
                                  "Book your cab for hustle free \n"
                                  "travel experience",
                                  textStyle: GoogleFonts.rowdies(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                              repeatForever: false,
                              isRepeatingAnimation: false,
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: 160,
                            child: Image.asset(
                              "assets/img/fortuner.png",
                              width: 250,
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
                                  Get.to(() => CabBookingScreen());
                                },
                                icon: Icon(Icons.arrow_forward),
                                color: AppColors.textColor1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Shikara Rides
                  Visibility(
                    visible: isVisible,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "   Book Shikara's",
                          textStyle: GoogleFonts.rowdies(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textColor1),
                          speed: Duration(milliseconds: 200),
                        ),
                      ],
                      repeatForever: false,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
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
                                  Get.to(
                                    () => ShikaraBooking(),
                                  );
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
                                    "Looking for Shikara?",
                                    textStyle: GoogleFonts.rowdies(
                                        fontSize: 34,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    speed: Duration(milliseconds: 200),
                                  ),
                                ],
                                repeatForever:false,
                              )),
                          Positioned(
                            left: 20,
                            top: 90,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  "Book your shikara for hustle free \n"
                                  "travel experience",
                                  textStyle: GoogleFonts.rowdies(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                              repeatForever: true,
                              isRepeatingAnimation: true,
                            ),
                          ),
                          Positioned(
                            left: -30,
                            top: 90,
                            child: Image.asset(
                              "assets/img/shikara.png",
                              width: 300,
                              height: 300,
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
                                  Get.to(
                                    () => ShikaraBooking(),
                                  );
                                },
                                icon: Icon(Icons.arrow_forward),
                                color: AppColors.textColor1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );

    ;
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
