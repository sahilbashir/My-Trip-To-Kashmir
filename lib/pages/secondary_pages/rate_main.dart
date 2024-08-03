import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/pages/secondary_pages/pahalgam.dart';
import 'gulmarg.dart';
class Rate extends StatefulWidget {
  const Rate({super.key});

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  List _items=[];


  Future<void> readjson() async{
    final String response= await rootBundle.loadString("assets/rate.json");
    final data= await json.decode(response);
    setState(() {
      _items=data["items"];
    });
  }

  @override
  void initState(){
    readjson();
    super.initState();
  }


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
              Text("Rate List ",style: GoogleFonts.rowdies(fontSize: 30),),
              SizedBox(width: 20,),

            ],
          ),
        )
    ),
  ),
),
      backgroundColor: Colors.white,
      body: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context,index){
return Container(

  //duration: Duration(milliseconds: 100),
  //curve: Curves.easeInOut,
  height: 150,
  child:   Card(
    
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    key: ValueKey(_items[index]["id"]),
    margin: EdgeInsets.all(10),
    color: Colors.white,
    child:
    Align(
      
      alignment: Alignment.center,
      //duration: Duration(milliseconds: 100),
      //curve: Curves.bounceIn,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Row(children: [CircleAvatar(

          radius: 40,

          backgroundImage: NetworkImage(_items[index]["img"]),
        ),
          SizedBox(width: 30,),
          Text(_items[index]["name"],style: GoogleFonts.rowdies(fontSize: 25,color: Colors.black),),
 SizedBox(width: 20,),
IconButton(onPressed: (){

  switch(index){
    case 0:Get.to(()=>GulmargRateList());break;
    case 1:Get.to(()=>PahalgamRateList());
  }

}, icon: Icon(Icons.arrow_forward_ios))
        ],
        ),
      ),
    )
    /*ListTile(
      leading:CircleAvatar(

radius: 30,

        backgroundImage: NetworkImage(_items[index]["img"]),
      ),//Text(_items[index]["id"]) ,
      title: Text(_items[index]["name"]),
      subtitle: Text(_items[index]["rate_g"]),
    ),*/



  ),
);
        }),

    );
  }
}
