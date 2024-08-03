import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';import 'package:get/get_core/src/get_main.dart';import 'package:google_fonts/google_fonts.dart';

class ShikaraCart extends StatefulWidget {
  const ShikaraCart({super.key});

  @override
  State<ShikaraCart> createState() => _ShikaraCartState();
}

class _ShikaraCartState extends State<ShikaraCart> {


  var collection = FirebaseFirestore.instance.collection("ShikaraBookings");
  late List<Map<String,dynamic>> items;
  bool isLoaded=false;
  void initState(){
    _getData();
    super.initState();
  }
  _getData() async{
    List<Map<String,dynamic>> tempList=[];
    var data = await collection.get();

    data.docs.forEach((element){
      tempList.add(element.data());
    });

    setState(() {
      items=tempList;
      isLoaded=true;
    });
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
                    Text("Shikara Bookings",style: GoogleFonts.rowdies(fontSize: 30,color: Colors.black87),),
                    SizedBox(width: 20,),

                  ],
                ),
              )
          ),
        ),
      ),
      body: Center(
          child: isLoaded?ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                return
                  Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    height:  MediaQuery.of(context).size.height * 0.20,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white70,
                      elevation: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 0.28,
                                  maxHeight: MediaQuery.of(context).size.width * 0.38,
                                ),
                                child:CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(items[index]['img']),
                                  radius: 100,
                                )

                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text(
                                    items[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: Text("Booking Amount : "+
                                      items[index]['amount'].toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),



                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: Text("No of Shikara's: "+
                                      items[index]['no_of_shiks'].toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),





                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: Text("Time Slot: "+
                                      items[index]['time_slot'],
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),









                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: Text("Hours: "+
                                      items[index]['hours'].toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),







                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: Text("Booking Date: "+
                                      items[index]['booked_at'],
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),














                            ],
                          ),

                        ],
                      ),
                    ),
                  );
              })


          /* Padding(padding: EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                     backgroundImage: NetworkImage(items[index]['img']),
                    radius: 30,
                    // Image.network(items[index]['img']),
                  ),
                  title: Row(
                    children: [
                      Text(items[index]['name']),
                      SizedBox(width: 10,),
                      Text(items[index]['persons'].toString()),
                    ],
                  ),
                  subtitle: Text(items[index]['price'].toString()),
                ),

              );*/

              :Text("No Data")
      ),
    );
  }
}