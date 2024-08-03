import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const DetailPage(
      {Key? key,
        required this.imageUrl,
        required this.title,
        required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          height: 100,

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
                    SizedBox(width: 40,),
                    Text(title,style: GoogleFonts.rowdies(fontSize: 30),),
                    SizedBox(width: 20,),
                  ],
                ),
              )
          ),
        ),
      ),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [

            Positioned(
                left: 0,right: 0,top: 10,
                child:

                VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    viewportFraction: 1.0,
                    aspectRatio: 16/9,
                    enlargeCenterPage: true,
                    itemCount: 3, itemBuilder: (context,index){
                  return Image.network(imageUrl,fit: BoxFit.cover,width: double.infinity,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 15)).make();
                })


            ),

            Positioned(
                top: 300,
                left:0,
                bottom:0,
                right:0,
                child: Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      )
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [






                        Text("Description",style: GoogleFonts.zenAntique(
                            color: Colors.black.withOpacity(0.8),fontSize: 20
                        ),),
                        SizedBox(height: 10,),
                        //AppText(text: detail.place.description,color: AppColors.mainTextColor,),
                        Text(description,style: GoogleFonts.zenAntique(color: AppColors.mainTextColor,fontSize: 15),),



                        SizedBox(height: 10,),





                      ],
                    ),
                  ),

                )
            ),


          ],
        ),
      ),
    );
  }
}
