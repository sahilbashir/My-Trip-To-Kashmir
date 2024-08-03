import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/misc/colors.dart';


import 'package:velocity_x/velocity_x.dart';
class Todo extends StatefulWidget {

   Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo>
{
  late FlipCardController controller1;
  late FlipCardController controller2;
  late FlipCardController controller3;
  late FlipCardController controller4;
  late FlipCardController controller5;
  late FlipCardController controller6;
  late FlipCardController controller7;
  @override
  void initState(){
    super.initState();
    controller1=FlipCardController();
    controller2=FlipCardController();
    controller3=FlipCardController();
    controller4=FlipCardController();
    controller5=FlipCardController();
    controller6=FlipCardController();
    controller7=FlipCardController();
  }
  @override
  Widget build(BuildContext context) {
    List gulmarg =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg01.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg02.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg03.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg04.jpg"
    ] ;
    List shikara =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/shikara/shikara01.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/shikara/shikara02.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/shikara/shikara03.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/shikara/shikara04.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/shikara/shikara05.jpeg"
    ] ;
    List sking =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/sking/sking01.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/sking/sking02.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/sking/sking03.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/sking/sking04.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/sking/sking05.jpeg",
    ] ;
    List trekking =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/trekking/trekking01.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/trekking/trekking02.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/trekking/trekking03.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/trekking/trekking04.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/trekking/trekking05.jpeg",

    ] ;
    List wazwan =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/wazwan01.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/wazwan02.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/rista.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/kebab.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/tabakh_mazz.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/rogan_josh.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/yekhni.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/wazwan/gushtaba.jpg",
    ] ;

    List houseboat =[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/houseboat/houseboat01.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/houseboat/houseboat02.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/houseboat/houseboat03.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/houseboat/houseboat04.jpg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/houseboat/houseboat05.jpg",

    ] ;

    List rafting=[
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/rafting/rafting01.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/rafting/rafting02.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/rafting/rafting03.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/rafting/rafting04.jpeg",
      "https://sahilbashir.github.io/MyTripToKashmirServer/images/rafting/rafting05.jpeg",
    ];

    List wazwanNames=[
      "Wazwan",
      "Kashmiri Cusine",
      "Rista",
      "Kebab",
      "Tabakh Mazz",
      "Rogan Josh",
      "Yekhni",
      "Gushtaba"
    ];

    return Scaffold(
      body: SafeArea(
        child:
        SingleChildScrollView(
        padding: EdgeInsets.all(12),
          child: Column(
          children: [
            //Gondola Ride
          FlipCard(
            controller: controller1,
              front:  GestureDetector(
                onTap: (){
                  controller1.toggleCard();
                },
                child: Card(
          clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
                alignment: Alignment.center,
                children: [
                 VxSwiper.builder(itemCount: gulmarg.length,
                autoPlay: true,
                height: 280,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                itemBuilder: (context,index){
                   return  Ink.image(image: NetworkImage(gulmarg[index]),
                     height: 280,
                     fit: BoxFit.cover,
                   );
                 }),
                  Text("Gondola Ride",style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                  ),
                ],
            ),
          ),
              ),
            back: GestureDetector(
              onTap: (){
                controller1.toggleCard();
              },
              child: Card(

                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                   Container(
                     
                     color: AppColors.mainColor,
                     height: 280,
                   ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        " Ascending the heights of Gulmarg via the Gulmarg Gondola is a thrilling adventure that rewards you with panoramic vistas of unmatched grandeur"
                          ".\nThe Cable Car divided into two satges, takes you from the lush meadows to the lofty peaks, each leg of the journey offering a new perspective of the breathtaking landscape. "
                        ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
            10.heightBox,
            //Shikara Ride
            FlipCard(
                controller: controller2,
                front:  GestureDetector(
                  onTap: (){
                    controller2.toggleCard();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VxSwiper.builder(itemCount: shikara.length,
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            height: 280,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            itemBuilder: (context,index){
                              return  Ink.image(image: NetworkImage(shikara[index],),
                                height: 280,
                                fit: BoxFit.cover,

                              );
                            }),
                        Text("Shikara Ride",style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                        ),
                      ],
                    ),
                  ),
                ),
                back: GestureDetector(
                  onTap: (){
                    controller2.toggleCard();
                  },
                  child: Card(

                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(

                          color: AppColors.mainColor,
                          height: 280,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Embarking on a shikara ride in Srinagar is akin to stepping into a dreamlike world of tranquility and natural beauty.\n"
                            "The gentle sway of the shikara as it glides across the shimmering waters of Dal Lake or Nigeen Lake offering a mesmerizing escape from the everyday hustle.\n"
                            "Surrounded by breathtaking panorama of snow-caped mountains and lush gardens, you'll feel a profound sense of serenity."
                            ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            10.heightBox,
            //Sking
            FlipCard(
                controller: controller3,
                front:  GestureDetector(
                  onTap: (){
                    controller3.toggleCard();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VxSwiper.builder(itemCount: sking.length,
                            autoPlay: true,
                            height: 280,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            itemBuilder: (context,index){
                              return  Ink.image(image: NetworkImage(sking[index]),
                                height: 280,
                                fit: BoxFit.cover,
                              );
                            }),
                        Text("SKing \n      &   \n Snowboarding",style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                        ),
                      ],
                    ),
                  ),
                ),
                back: GestureDetector(
                  onTap: (){
                    controller3.toggleCard();
                  },
                  child: Card(

                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(

                          color: AppColors.mainColor,
                          height: 280,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "The snow-covered slopes of Gulmarg beckon sking and snowboarding enthusiasts with the promise of thrilling descents and breathtaking vistas.\n"
                            "Nested amidst the mighty Himalayas, Gulmarg transforms into a winter wonderland, offering a playground for both beginners and experienced winter sports enthusiasts."
                            ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          10.heightBox,
            //Trekking
            FlipCard(
                controller: controller4,
                front:  GestureDetector(
                  onTap: (){
                    controller4.toggleCard();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VxSwiper.builder(itemCount: trekking.length,
                            autoPlay: true,
                            height: 280,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            itemBuilder: (context,index){
                              return  Ink.image(image: NetworkImage(trekking[index]),
                                height: 280,
                                fit: BoxFit.cover,
                              );
                            }),
                        Text("Trekking",style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                        ),
                      ],
                    ),
                  ),
                ),
                back: GestureDetector(
                  onTap: (){
                    controller4.toggleCard();
                  },
                  child: Card(

                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(

                          color: AppColors.mainColor,
                          height: 280,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Trekking in kashmir is a soul-stirring journey that immerses you in the raw, untouched beauty of the Himalayan landscape. The region offers an array of trekking trails, each leading you through diverse terrains, from lush green valleys to towering peaks. Whether you're a seasoned trekker or a novice explorer, there is a trail to suit your preference and skill level.\n"
                            "Most Famous-----> Kashmir Great Lakes Trek"
                            ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            10.heightBox,
            //Wazwan  dont copy this changed it
            FlipCard(
                controller: controller5,
                front:  GestureDetector(
                  onTap: (){
                    controller5.toggleCard();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VxSwiper.builder(itemCount: wazwan.length,
                            autoPlay: true,
                            height: 280,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            itemBuilder: (context,index){
                              return
                                Stack(
                                  alignment: Alignment.center,
                              children: [
                                Ink.image(image: NetworkImage(wazwan[index]),
                                  height: 280,
                                  fit: BoxFit.cover,
                                ),

                                Text(wazwanNames[index],style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                                ),
                              ],


                                );
                            }),

                      ],
                    ),
                  ),
                ),
                back: GestureDetector(
                  onTap: (){
                    controller5.toggleCard();
                  },
                  child: Card(

                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(

                          color: AppColors.mainColor,
                          height: 280,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Wazwan(Kashmiri: وازِوان) is a multi-course meal in Kashmiri cuisine, the preparation of which is considered an art and a point of pride in Kashmiri culture and identity. Almost all the dishes are meat-based using lamb or chicken.\n"
                            "\nNot trying these things in Kashmir is definetly a thing you're going to regret later especially for foodies."
                            ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          10.heightBox,
            //Houseboat
            FlipCard(
                controller: controller6,
                front:  GestureDetector(
                  onTap: (){
                    controller6.toggleCard();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VxSwiper.builder(itemCount: houseboat.length,
                            autoPlay: true,
                            height: 280,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            itemBuilder: (context,index){
                              return  Ink.image(image: NetworkImage(houseboat[index]),
                                height: 280,
                                fit: BoxFit.cover,
                              );
                            }),
                        Text("Houseboat Stay",style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                        ),
                      ],
                    ),
                  ),
                ),
                back: GestureDetector(
                  onTap: (){
                    controller6.toggleCard();
                  },
                  child: Card(

                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(

                          color: AppColors.mainColor,
                          height: 280,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Staying on a houseboat in Dal Lake is a truly enchanting experience that transports you to world of opulent comfort and timeless elegance.\n"
                            "These floating abodes, adorned with intricite woodwork and handwoven textiles, offer a seamless blend of traditional Kashmiri architecture and modern amenities.\n"

                            ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          10.heightBox,
            //Rafting
            FlipCard(
                controller: controller7,
                front:  GestureDetector(
                  onTap: (){
                    controller7.toggleCard();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        VxSwiper.builder(itemCount: rafting.length,
                            autoPlay: true,
                            height: 280,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            itemBuilder: (context,index){
                              return  Ink.image(image: NetworkImage(rafting[index]),
                                height: 280,
                                fit: BoxFit.cover,
                              );
                            }),
                        Text("Rafting",style: GoogleFonts.roadRage(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 52),
                        ),
                      ],
                    ),
                  ),
                ),
                back: GestureDetector(
                  onTap: (){
                    controller7.toggleCard();
                  },
                  child: Card(

                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(

                          color: AppColors.mainColor,
                          height: 280,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "River Rafting in Pahalgam is an exhilarating adventure that allows you to navigate the roaring rapids of the Lidder River.\n"
                            "\nWhile being surrounded by breathtaking natural beauty. The river, fed by melting glaciers and mountain streams, offers a thrilling and dynamic experience for both beginners and experienced rafters.\n"

                            ,style: GoogleFonts.zenAntique(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),








          ],
        ),

          ),
      ),

    );
  }



}
