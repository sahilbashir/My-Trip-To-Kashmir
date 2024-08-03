import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class PahalgamRateList extends StatelessWidget {
  const PahalgamRateList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

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
                      Text("Pahalgam Rate List ",style: GoogleFonts.rowdies(fontSize: 30),),
                      SizedBox(width: 20,),

                    ],
                  ),
                )
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Local Pahalgam Full Sightseeing",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :4500/-\n"
                        "Innova : 4000/-\n"
                        "Xylo : 3800/-\n"
                        "Tavera : 3500/-\n"
                        "Sumo : 3400/-\n"
                        "Etios : 3600/-\n"
                        "Ecco :3200/-\n"
                        "Van : 3000/-\n"
                        ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),

                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Aru Valley, Betaab Valley and Chandanwari ",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :3000/-\n"
                        "Innova : 2700/-\n"
                        "Xylo : 2500/-\n"
                        "Tavera : 2400/-\n"
                        "Sumo : 2300/-\n"
                        "Etios : 2350/-\n"
                        "Ecco :2200/-\n"
                        "Van : 2100/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Aru Valley and Betaab Valley",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :2400/-\n"
                        "Innova : 2200/-\n"
                        "Xylo : 2100/-\n"
                        "Tavera : 2000/-\n"
                        "Sumo : 1900/-\n"
                        "Etios : 2050/-\n"
                        "Ecco :1800/-\n"
                        "Van : 1700/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Aru Valley and Chandanwari",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :2700/-\n"
                        "Innova : 2500/-\n"
                        "Xylo : 2300/-\n"
                        "Tavera : 2200/-\n"
                        "Sumo : 2100/-\n"
                        "Etios : 2150/-\n"
                        "Ecco :2000/-\n"
                        "Van : 1900/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Chandanwari and Betaab Valley",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :2200/-\n"
                        "Innova : 2000/-\n"
                        "Xylo : 1900/-\n"
                        "Tavera : 1800/-\n"
                        "Sumo : 1700/-\n"
                        "Etios : 1850/-\n"
                        "Ecco :1600/-\n"
                        "Van : 1500/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Chandanwari",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :2000/-\n"
                        "Innova : 1800/-\n"
                        "Xylo : 1700/-\n"
                        "Tavera : 1600/-\n"
                        "Sumo : 1500/-\n"
                        "Etios : 1650/-\n"
                        "Ecco :1400/-\n"
                        "Van : 1300/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Aru Valley",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :1800/-\n"
                        "Innova : 1600/-\n"
                        "Xylo : 1500/-\n"
                        "Tavera : 1400/-\n"
                        "Sumo : 1300/-\n"
                        "Etios : 1450/-\n"
                        "Ecco :1200/-\n"
                        "Van : 1100/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Betaab Valley",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :1600/-\n"
                        "Innova : 1400/-\n"
                        "Xylo : 1300/-\n"
                        "Tavera : 1200/-\n"
                        "Sumo : 1100/-\n"
                        "Etios : 1250/-\n"
                        "Ecco :1000/-\n"
                        "Van : 900/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Sinthan Top Via Achabal And Back to Pahalgam",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :6000/-\n"
                        "Innova : 5800/-\n"
                        "Xylo : 5600/-\n"
                        "Tavera : 5600/-\n"
                        "Sumo : 5400/-\n"
                        "Etios : 5500/-\n"
                        "Ecco :5200/-\n"
                        "Van : 5000/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text("Note : Time Halt at each spot 1Hr.\n"
                        "* Extra Time Taken After 1 Hr is Rs 400/- Per Hr.\n "
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Srinagar T.R.C Drop",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :4200/-\n"
                        "Innova : 3900/-\n"
                        "Xylo : 3700/-\n"
                        "Tavera : 3600/-\n"
                        "Sumo : 3500/-\n"
                        "Etios : 3650/-\n"
                        "Ecco :3400/-\n"
                        "Van : 3300/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text(
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Airport Drop",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :4400/-\n"
                        "Innova : 4100/-\n"
                        "Xylo : 3900/-\n"
                        "Tavera : 3700/-\n"
                        "Sumo : 3600/-\n"
                        "Etios : 3750/-\n"
                        "Ecco :3500/-\n"
                        "Van : 3400/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text(
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Gulmarg Drop",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :6200/-\n"
                        "Innova : 5900/-\n"
                        "Xylo : 5700/-\n"
                        "Tavera : 5500/-\n"
                        "Sumo : 5200/-\n"
                        "Etios : 5400/-\n"
                        "Ecco :5000/-\n"
                        "Van : 4800/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text(
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Sonmarg Drop",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Crysta :7300/-\n"
                        "Innova : 6900/-\n"
                        "Xylo : 6700/-\n"
                        "Tavera : 6500/-\n"
                        "Sumo : 6200/-\n"
                        "Etios : 6400/-\n"
                        "Ecco :6000/-\n"
                        "Van : 5800/-\n"
                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                    Text(
                        "** AC 30% Extra."

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),
                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Tulian Lake (16 Km )",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Rs. 2450/- (To and Fro)\n"
                        "Rs. 1320/- Extra for Overnight Stay"

                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),

                  ],

                ),
              ),
              20.heightBox,
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ExpansionTile(title: Text("Local Riding Per Hour",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
                  collapsedTextColor: Colors.black,

                  children: [
                    Text("Rs. 500/- for first hour of ride\n"
                        "Rs. 350/- for subsequent riding hour"


                      ,style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),),

                  ],

                ),
              ),
            ],
          ),
        )

    );
  }
}
