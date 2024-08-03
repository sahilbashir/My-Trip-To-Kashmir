import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:velocity_x/velocity_x.dart';

class ShikaraBooking extends StatefulWidget {
  const ShikaraBooking({super.key});

  @override
  State<ShikaraBooking> createState() => _ShikaraBookingState();
}

class _ShikaraBookingState extends State<ShikaraBooking> {



  late Razorpay _razorpay;
  TextEditingController amtController= TextEditingController();


  void openCheckout(amount)async{
    amount =amount*100;

    var options={
      'key':'rzp_test_agNt2ADXZBWxNd',
      'amount':amount,
      'name':'My Trip To Kashmir',
      'timeout':'180',
      'description':'car',
      'prefil':{'contact':'7006333578','email':'test@gmail.com'},
      'external':{
        'wallets':['paytm']
      }
    };
    try{
      _razorpay.open(options);
    }catch(e){

      debugPrint('Error: e');
    }
  }



  void handlePaymentSuccess(PaymentSuccessResponse response){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(response.paymentId!),
      backgroundColor: Colors.green,
    ));
    //Fluttertoast.showToast(msg: "Payment Successful"+response.paymentId!,toastLength: Toast.LENGTH_SHORT);
  }


  void handlePaymentError(PaymentFailureResponse response){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(response.message!),
      backgroundColor: Colors.red,
    ));

    // Fluttertoast.showToast(msg: "Payment Error"+response.message!,toastLength: Toast.LENGTH_SHORT);
  }

  void handleExternalWallet(ExternalWalletResponse response){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(response.walletName!),
      backgroundColor: Colors.green,
    ));
    //Fluttertoast.showToast(msg: "External Wallet"+response.walletName!,toastLength: Toast.LENGTH_SHORT);
  }
  TextEditingController _dateController=TextEditingController();
   String? shikaravalue="1";
  String? shikaravalue3="1";
   final listItem=["1","2","3","4","5"];
  final listItem3=["1","2","3","4","5"];
String? shikaravalue2="07:00 AM to 08:00 AM";
   final listItem2=[
     "07:00 AM to 08:00 AM",
     "08:00 AM to 09:00 AM",
     "09:00 AM to 10:00 AM",
     "10:00 AM to 11:00 AM",
     "11:00 AM to 12:00 PM",
   ];
   bool isFinished=false;
   double finalPrice=0;



  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  void initState(){

    _razorpay = Razorpay();

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    super.initState();
  }
  var ShikaraBookings= FirebaseFirestore.instance.collection("ShikaraBookings");
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
//Shikara Image
            Positioned(
                left: 0,right: 0,
                child:

                VxSwiper.builder(
                    autoPlay: false,
                    height: 350,
                    viewportFraction: 1.0,
                    aspectRatio: 16/9,
                    enlargeCenterPage: true,
                    itemCount: 1, itemBuilder: (context,index){
                  return Image.asset("assets/img/shikara.png",fit: BoxFit.cover,width: double.infinity,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 15)).make();
                })

            ),
            //IconBUtton
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(onPressed: (){
Get.back();
                    }, icon: Icon(Icons.arrow_back_sharp)
                      ,color: AppColors.mainColor,
                    )
                  ],
                )),
//Input Fields
            Positioned(
                top: 300,
                left:0,
                bottom:80,
                right:0,
                child: Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),

                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                      )
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

//Date Field


                        Text("Booking a Shikara...",style:GoogleFonts.aclonica(
                            fontSize: 22
                        )),
                        5.heightBox,
                        Text("Please Provide some details...",style:GoogleFonts.aclonica(
                            fontSize: 12
                        )),
                      15.heightBox,
                        TextField(

  controller: _dateController,
  decoration: InputDecoration(

   // labelText: "Select a Date",
    labelText: "   Select a Date",
   // labelStyle: GoogleFonts.zenAntique(),
    //labelStyle: GoogleFonts.rowdies(),
    filled: true,
   // label: Text("Select a Date"),
    labelStyle: GoogleFonts.zenAntique(),
    prefixIcon: Icon(Icons.calendar_today,color: AppColors.textColor1,),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.textColor1),
      borderRadius: BorderRadius.circular(25)
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
      borderRadius: BorderRadius.circular(25)
    )

  ),
  readOnly: true,
  onTap: (){
    _selectDate();
  },
),
                        SizedBox(height: 20,),

//No of Shikaras
                       DropdownButtonFormField(

                                icon:  Icon(
                                  Icons.arrow_drop_down_circle,
                                  color: AppColors.textColor1,
                                ),
                                dropdownColor: Colors.white,
                                focusColor: AppColors.textColor1,

                                decoration: InputDecoration(
                                  labelText: "Select number of shikara's",
                                  hintText:  "Select number of shikara's",
                                  labelStyle: GoogleFonts.zenAntique(),
                                  prefixIcon: Icon(Icons.numbers_rounded,color: AppColors.textColor1,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: AppColors.textColor1)

                                  )

                                ),


                                //autofocus: true,

                                //hint: Text("Select number of shikara's"),
                                //dropdownColor: Colors.black26,
                                //icon: Icon(Icons.arrow_drop_down),
                                //iconSize: 30,
                                //isExpanded: true,
                                //style: GoogleFonts.zenAntique(fontSize: 22,color: Colors.black),
                                items:
                                listItem.map((e)=>DropdownMenuItem(child: Text(e),value: e,)).toList(),
                                /*const [
                                  DropdownMenuItem<String>(
                                      value: '1',
                                      child: Text("1")
                                  ),

                                  DropdownMenuItem<String>(
                                      value: '2',
                                      child: Text("2")
                                  ),
                                  DropdownMenuItem<String>(
                                      value: '3',
                                      child: Text("3")
                                  ),
                                  DropdownMenuItem<String>(
                                      value: '4',
                                      child: Text("4")
                                  ),
                                  DropdownMenuItem<String>(
                                      value: '5',
                                      child: Text("5")
                                  ),
                                ],*/
                                value: shikaravalue,
                                onChanged: ( newValue){
                              setState(() {
                                shikaravalue= newValue as String;
                              });
                                }
                                ),
                        SizedBox(height: 20,),
//Time Slot
                        DropdownButtonFormField(

                            icon:  Icon(
                              Icons.arrow_drop_down_circle,
                              color: AppColors.textColor1,
                            ),
                            dropdownColor: Colors.white,
                            focusColor: AppColors.textColor1,
borderRadius: BorderRadius.circular(25),
                            decoration: InputDecoration(
                                labelText: "Time Slot",
                                hintText:  "Select number of shikara's",
                                labelStyle: GoogleFonts.zenAntique(),
                                prefixIcon: Icon(Icons.lock_clock,color: AppColors.textColor1,),
                                
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: AppColors.textColor1)

                                )

                            ),



                            items:
                            listItem2.map((e)=>DropdownMenuItem(child: Text(e),value: e,)).toList(),

                            value: shikaravalue2,
                            onChanged: ( newValue){
                              setState(() {
                                shikaravalue2= newValue as String;
                              });
                            }
                        ),
                        SizedBox(height: 20,),
   //No 0f hours
                        DropdownButtonFormField(

                            icon:  Icon(
                              Icons.arrow_drop_down_circle,
                              color: AppColors.textColor1,
                            ),
                            dropdownColor: Colors.white,
                            focusColor: AppColors.textColor1,
                            borderRadius: BorderRadius.circular(25),
                            decoration: InputDecoration(
                                labelText: "Number of hour's per shikara",
                                hintText:  "Select number of shikara's",
                                labelStyle: GoogleFonts.zenAntique(),
                                prefixIcon: Icon(Icons.alarm_on,color: AppColors.textColor1,),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: AppColors.textColor1)

                                )

                            ),



                            items:
                            listItem.map((e)=>DropdownMenuItem(child: Text(e),value: e,)).toList(),

                            value: shikaravalue3,
                            onChanged: ( newValue){
                              setState(() {
                                shikaravalue3= newValue as String;
                              });
                            }
                        ),
                        SizedBox(height: 20,),


                        Text("The shikara can accomodate maximum  of four persons,including the children.",
                        style: GoogleFonts.zenAntique(fontSize: 15,color: AppColors.textColor1),),
                            SizedBox(height: 10,),
                            Text("Boarding Point : Ghat No. 12",style: GoogleFonts.roadRage(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),
SizedBox(height: 10,),
                        Text("Rate : 770/shikara",style: GoogleFonts.roadRage(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),
                      ],
                    ),
                  ),

                )
            ),

            Positioned(
                bottom: 20,left: 20,right: 20,
                child: Row(
                  children: [




                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          _calculatePrice();
                          _dateController.text.isEmpty==true?
                            Get.snackbar("Date not Selected","Please enter a date",snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 1),
                              icon: Icon(Icons.add_alert,color: AppColors.mainColor,),
                              colorText: AppColors.mainColor
                            )
                                    :

                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                              ),
                              isScrollControlled: true,
                              context: context, builder: (context){
                            return SizedBox(
                              child: Container(
                              padding: EdgeInsets.all(12),
height: 500,
                                alignment: Alignment.topLeft,
                                child: Column(
mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Review Booking Details",style: GoogleFonts.rowdies(
                                      fontWeight: FontWeight.bold,color: AppColors.mainColor,fontSize: 30
                                    ),),
20.heightBox,

                                    Text("Booking Date : "+_dateController.text.toString(),
                                    style: GoogleFonts.rowdies(
                                      fontSize: 18,
fontWeight: FontWeight.normal,
                                      color: Colors.black26
                                    ),
                                    ),
             20.heightBox,
                                    Text("Number of Shikara's:  "+shikaravalue!,
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26
                                      ),
                                    ),
                                    20.heightBox,
                                    Text("Time Slot:  "+shikaravalue2!,
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26
                                      ),
                                    ),
                                    20.heightBox,
                                    Text("No of hours: "+shikaravalue3!,
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26
                                      ),
                                    ),
                          20.heightBox,
                                    Row(
                                      children: [
                                        Text("Total Amount:      \t\t          "+_calculatePrice().toString(),
                                          style: GoogleFonts.rowdies(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),

                                    20.heightBox,
                                    Text("We will Send updates to ",style: GoogleFonts.rowdies(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: AppColors.mainColor
                                    ),),
                                    10.heightBox,
                                    Text("Phone: "+ap.userModel.phoneNumber,
                                    style: GoogleFonts.rowdies(
                                      fontSize: 18,
                                      color: Colors.black26
                                    ),
                                    ),
                                    10.heightBox,
                                    Text("Email:"+ap.userModel.email,
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          color: Colors.black26
                                      ),
                                    ),

                                    20.heightBox,
                                    GestureDetector(
                                      onTap: (){
                                        double amount= _calculatePrice();
                                        openCheckout(amount);

                                        ShikaraBookings.add({
                                          "name":"Shikara",
                                          "booked_at":_dateController.text.toString(),
                                          "no_of_shiks":shikaravalue,
                                          "time_slot":shikaravalue2,
                                          "hours":shikaravalue3,
                                          "amount":_calculatePrice().toString(),
                                          "img":"assets/img/shikara.png",
                                          "uid":ap.userModel.uid
                                        });
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: 50,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              color: AppColors.textColor1,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          //padding: const EdgeInsets.symmetric(horizontal: 40),
                                          child:

                                          Text("Book",style: GoogleFonts.zenAntique(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)



                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppColors.textColor1,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          //padding: const EdgeInsets.symmetric(horizontal: 40),
                          child:

                        Text("Book",style: GoogleFonts.zenAntique(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)



                        ),
                      ),
                    ),









                  ],
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async{
   DateTime? _picked= await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2024),
        lastDate: DateTime(2100)
    );
   if(_picked!=null){
     setState(() {
       _dateController.text=_picked.toString().split(" ")[0];
     });
   }
  }

  double _calculatePrice(){
    finalPrice=0;
    finalPrice=finalPrice+double.parse(shikaravalue!)*double.parse(shikaravalue3!)*770;
    return finalPrice;
  }
}
