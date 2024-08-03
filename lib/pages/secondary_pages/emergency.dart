import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
                    SizedBox(width: 10,),
                    Text("Helpline Numbers ",style: GoogleFonts.rowdies(fontSize: 30,color: Colors.black87),),
                    SizedBox(width: 20,),

                  ],
                ),
              )
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [


            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(30)

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("J&K Tourism Helpline Number",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Helpline Number of Jammu And Kashmir Tourism Department.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:9419212451'));
                    },
                    child: Align(
  alignment: Alignment.bottomRight,
  child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Tourist Reception Center Srinagar",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Tourist Reception Center Srinagar.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:9596098882'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Tourist Reception Center Pahalgam",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Tourist Reception Center Pahalgam.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:01936243224'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Tourist Reception Center Gulmarg",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Tourist Reception Center Gulmarg.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:9797030904'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Srinagar Airport",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Tourist Reception Center Srinagar Airport.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:01942303635'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Tourist Reception Center Kargil",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Tourist Reception Center Kargil.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:01985232721'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Tourist Reception Center Jammu",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Tourist Reception Center Jammu.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:25481722520432'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Divisional Commisioner Office Kashmir",style: GoogleFonts.aBeeZee(fontSize: 17,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Divisional Commisioner Office Kashmir.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:9596098882'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Jammu Airport",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Jammu Airport.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:01912431917'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Leh Airport",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Official Number of Leh Airport.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:01982253076'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Centralized Helpline Number",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Centralized Helpline Number.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:112'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Police",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Police Helpline Number.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:100'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Fire",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Fire Helpline Number.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:101'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 30,)),
                      Text("Ambulance",style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Ambulance Helpline Number.",style: GoogleFonts.aBeeZee(fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('tel:102'));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("DIAL",style: GoogleFonts.rowdies(color: AppColors.mainColor,fontSize: 22),),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
