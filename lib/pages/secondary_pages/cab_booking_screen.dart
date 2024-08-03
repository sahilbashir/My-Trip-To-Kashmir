import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/widgets/custom_button.dart';
import 'package:mytriptokashmir/pages/secondary_pages/car_booking_page.dart';
import 'package:velocity_x/velocity_x.dart';

class CabBookingScreen extends StatefulWidget {
  const CabBookingScreen({super.key});

  @override
  State<CabBookingScreen> createState() => _CabBookingScreenState();
}

class _CabBookingScreenState extends State<CabBookingScreen> {
  String carNamePassed="Fortuner";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey,
appBar:  PreferredSize(
  preferredSize: Size.fromHeight(80.0),
  child: Container(
    height: 80,

    decoration: BoxDecoration(
      //color: Colors.red,
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        colors: <Color>[
          Colors.transparent,
          Colors.transparent,
        ],
      ),
    ),
    child: SafeArea(
        child: Center(
          child: Row(
            children: [
              IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back) ),
              //SizedBox(width: 40,),
            //  Text(title,style: GoogleFonts.rowdies(fontSize: 30),),
              //SizedBox(width: 20,),
            ],
          ),
        )
    ),
  ),
),
        body:SafeArea(
  child:   Padding(
  
    padding: EdgeInsets.all(8),
  
    child: SingleChildScrollView(
      child: Column(
  
        children: [
  
  
  
          Stack(
            children: [
              Positioned(

                child: Container(
                height: 310,
              width: double.maxFinite,
              decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              ),),
              Positioned(
        left: 20,
        top: 20,
        child: Row(
  children: [
      Text("Fortuner",style: GoogleFonts.rowdies(
        fontSize: 18,

      ),),
      210.widthBox,
      Text("Class:",
        style: GoogleFonts.rowdies(
          fontSize: 18,

        ),
      )
  ],
  )
  ),
              Positioned(
                left: 20,
                  top: 45,
                  child: Row(
                children: [

                  Text("7 Seater"),
                  240.widthBox,
                  Text("Luxury")
                ],
              )),
              Positioned(
                  left: -10,
                  top: -40,
                  child: Image.asset("assets/img/fortuner.png",height: 400,width: 400,)),
              Positioned(
                bottom: 1,
                  child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                  Text("7",style: GoogleFonts.rowdies(
                    fontSize: 18
                  ),)
                ],
              )),
              Positioned(
                bottom: 5,
                  right: 20,
                  child: CustomButton(
                text: "Book",
                    onPressed: (){
                  String imagepath="assets/img/fortuner.png";
carNamePassed="Fortuner";
Get.to(()=>CarBookingPage(a: imagepath,carName:carNamePassed ,),transition: Transition.leftToRightWithFade);
                    },
              ))
            ],
          ),
          10.heightBox,
          Stack(
            children: [
              Positioned(

                child: Container(
                  height: 310,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                ),),
              Positioned(
                  left: 20,
                  top: 20,
                  child: Row(
                    children: [
                      Text("Amaze",style: GoogleFonts.rowdies(
                        fontSize: 18,

                      ),),
                      210.widthBox,
                      Text("Class:",
                        style: GoogleFonts.rowdies(
                          fontSize: 18,

                        ),
                      )
                    ],
                  )
              ),
              Positioned(
                  left: 20,
                  top: 45,
                  child: Row(
                    children: [

                      Text("4 Seater"),
                      220.widthBox,
                      Text("Luxury")
                    ],
                  )),
              Positioned(
                  left: -10,
                  top: -40,
                  child: Image.asset("assets/img/amaze.png",filterQuality:FilterQuality.high,height: 400,width: 400,)),
              Positioned(
                  bottom: 1,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                      Text("4",style: GoogleFonts.rowdies(
                          fontSize: 18
                      ),)
                    ],
                  )),
              Positioned(
                  bottom: 5,
                  right: 20,
                  child: CustomButton(
                    text: "Book",
                    onPressed: (){
                      String imagepath="assets/img/amaze.png";
carNamePassed="Amaze";
                      Get.to(()=>CarBookingPage(a: imagepath,carName: carNamePassed,),transition: Transition.leftToRightWithFade);
                    },
                  ))
            ],
          ),
10.heightBox,
          Stack(
            children: [
              Positioned(

                child: Container(
                  height: 310,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                ),),
              Positioned(
                  left: 20,
                  top: 20,
                  child: Row(
                    children: [
                      Text("Traveller",style: GoogleFonts.rowdies(
                        fontSize: 18,

                      ),),
                      210.widthBox,
                      Text("Class:",
                        style: GoogleFonts.rowdies(
                          fontSize: 18,

                        ),
                      )
                    ],
                  )
              ),
              Positioned(
                  left: 20,
                  top: 45,
                  child: Row(
                    children: [

                      Text("14 Seater"),
                      220.widthBox,
                      Text("Economy")
                    ],
                  )),
              Positioned(
                  left: -10,
                  top: -40,
                  child: Image.asset("assets/img/traveller.png",filterQuality:FilterQuality.high,height: 400,width: 400,)),
              Positioned(
                  bottom: 1,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                      Text("14",style: GoogleFonts.rowdies(
                          fontSize: 18
                      ),)
                    ],
                  )),
              Positioned(
                  bottom: 5,
                  right: 20,
                  child: CustomButton(
                    text: "Book",
                    onPressed: (){
                      String imagepath="assets/img/traveller.png";
carNamePassed="Traveller";
                      Get.to(()=>CarBookingPage(a: imagepath,carName:carNamePassed),transition: Transition.leftToRightWithFade);
                    },
                  ))
            ],
          ),
        ],
  
      ),
    ),
  
  ),
)

    );
  }
}
