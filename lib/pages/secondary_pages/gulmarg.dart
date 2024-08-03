import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class GulmargRateList extends StatelessWidget {
  const GulmargRateList({super.key});

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
                      Text("Gulmarg Rate List ",style: GoogleFonts.rowdies(fontSize: 30),),
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
        child: ExpansionTile(title: Text("Market to Gondola",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Rs. 175/- (Drop)",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
      20.heightBox,
      Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(title: Text("Market to Children's Park",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Rs. 300/- (Drop)\n \nRs. 500/-(Return)\n\n(Including Waiting charges for one hour)\n\nWaiting charges @225/- for every subsequent hour",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
      20.heightBox,
      Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(title: Text("Market to Maharaja Palace & View Point",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Rs. 300/- (Drop)\n \nRs. 500/-(Return)\n\n(Including Waiting charges for one hour)\n\nWaiting charges @225/- for every subsequent hour",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
      20.heightBox,
      Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(title: Text("Gulmarg to Bothapathri upto Ninglinalla Bridge",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Rs. 1800/- Return\n\n (Including waiting charges for 1 hour)\n\n Waiting charges @225/- for every subsequent hour.",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
      20.heightBox,
      Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(title: Text("Market to Khilanmarg",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Rs. 1300/- Return\n\n (Including waiting charges for 1 hour)\n\n Waiting charges @225/- for every subsequent hour.",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
      20.heightBox,
      Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(title: Text("Pony (Hourly Rate)",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Rs. 500/- for first hour of ride.\n\nRs. 350/- for every subsequent riding hour\n\n(For unspecified points)",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
      20.heightBox,
      Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(title: Text("Gulmarg Gondola",style: GoogleFonts.rowdies(color: Colors.black,fontSize: 20),),
          collapsedTextColor: Colors.black,

          children: [
            Text("Phase 1 (Gulmarg to Kungdoori) : Rs. 810/- Per Person\n\nPhase 1 (Kungdoori to Affarwat) : Rs. 1010/- Per Person\n\n Child upto 3 years are complimentary",style: GoogleFonts.palanquin(color: Colors.black,fontSize: 18),)
          ],

        ),
      ),
    ],
  ),
)

    );
  }
}
