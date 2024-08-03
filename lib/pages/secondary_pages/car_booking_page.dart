import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/widgets/app_large_text.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:mytriptokashmir/pages/secondary_pages/payment.dart';

class CarBookingPage extends StatefulWidget {
  final String a;
final String carName;

   CarBookingPage(
  {super.key,
    required this.a,required this.carName}
      );

  @override
  State<CarBookingPage> createState() => _CarBookingPageState();

}

class _CarBookingPageState extends State<CarBookingPage> {

  late Razorpay _razorpay;
  TextEditingController amtController= TextEditingController();


  void openCheckout(amount)async{
    amount =amount*100;
    String car= _getCarName();
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
 // String? shikaravalue="1";
  String? car="";
  String? pickup="Srinagar";
  final pickupItem=["Srinagar"];
  //String? shikaravalue3="1";
  //final listItem=["1","2","3","4"];
  //final listItem3=["1","2","3","4","5"];
  String? shikaravalue2="Airport Pick - Srinagar";
  final listItem2=[
    "Airport Pick - Srinagar",
    "Airport Drop - Srinagar",
    "Srinagar Locals",
    "Srinagar - Gulmarg",
    "Srinagar - Pahalgam",
  ];
  bool isFinished=false;
  String finalPrice="";

  var fortunerPrices={
    "Airport Pick - Srinagar":"4999",
    "Airport Drop - Srinagar":"4999",
    "Srinagar Locals":"5999",
    "Srinagar - Gulmarg":"7999",
    "Srinagar - Pahalgam":"9999"
  };
  var amazePrices={
    "Airport Pick - Srinagar":"3999",
    "Airport Drop - Srinagar":"3999",
    "Srinagar Locals":"5999",
    "Srinagar - Gulmarg":"6999",
    "Srinagar - Pahalgam":"7999"
  };
  var travellerPrices={
    "Airport Pick - Srinagar":"6999",
    "Airport Drop - Srinagar":"6999",
    "Srinagar Locals":"9999",
    "Srinagar - Gulmarg":"13999",
    "Srinagar - Pahalgam":"14999"
  };


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
  var CarBookings= FirebaseFirestore.instance.collection("CarBookings");
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

                //Image.asset(widget.a,fit: BoxFit.cover,width: double.infinity,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 15)).make(),

             VxSwiper.builder(
                    autoPlay: false,
                    height: 350,
                    viewportFraction: 1.0,
                    aspectRatio: 16/9,
                    enlargeCenterPage: true,
                    itemCount: 1, itemBuilder: (context,index){
                  return
                    Image.asset(widget.a,fit: BoxFit.contain,width: double.infinity,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 15)).make();
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


                        
Text("Booking a Ride...",style:GoogleFonts.aclonica(
  fontSize: 22
)),

5.heightBox,
Text("Please Provide some details...",style:GoogleFonts.aclonica(
  fontSize: 12
)),
//Date Field
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

//Pickup City
                        DropdownButtonFormField(

                            icon:  Icon(
                              Icons.arrow_drop_down_circle,
                              color: AppColors.textColor1,
                            ),
                            dropdownColor: Colors.white,
                            focusColor: AppColors.textColor1,

                            decoration: InputDecoration(
                                labelText: "Pickup City",
                                hintText:  "Pickup City",
                                labelStyle: GoogleFonts.zenAntique(),
                                prefixIcon: Icon(Icons.location_city,color: AppColors.textColor1,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(color: AppColors.textColor1)

                                )

                            ),
                            items:
                            pickupItem.map((e)=>DropdownMenuItem(child: Text(e),value: e,)).toList(),


                            value: pickup,
                            onChanged: ( newValue){
                              setState(() {
                                pickup= newValue as String;
                              });
                            }
                        ),
                        SizedBox(height: 20,),
//Activity
                        DropdownButtonFormField(

                            icon:  Icon(
                              Icons.arrow_drop_down_circle,
                              color: AppColors.textColor1,
                            ),
                            dropdownColor: Colors.white,
                            focusColor: AppColors.textColor1,
                            borderRadius: BorderRadius.circular(25),
                            decoration: InputDecoration(
                                labelText: "Select Day Activity",
                                hintText:  "Select Day Activity",
                                labelStyle: GoogleFonts.zenAntique(),
                                prefixIcon: Icon(Icons.local_activity,color: AppColors.textColor1,),

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
                        /*DropdownButtonFormField(

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
                        ),*/
                        SizedBox(height: 20,),


                      //  Text("The shikara can accomodate maximum  of four persons,including the children.",
                        //  style: GoogleFonts.zenAntique(fontSize: 15,color: AppColors.textColor1),),
                        //SizedBox(height: 10,),
                        //Text("Boarding Point : Ghat No. 12",style: GoogleFonts.roadRage(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),
                        //SizedBox(height: 10,),
                        //Text("Rate : 770/shikara",style: GoogleFonts.roadRage(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),
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

                          _dateController.text.isEmpty==true?
                          Get.snackbar("Date not Selected","Please enter a date",snackPosition: SnackPosition.TOP,
                              duration: Duration(seconds: 1),
                              icon: Icon(Icons.add_alert,color: AppColors.mainColor,),
                              colorText: AppColors.mainColor
                          )
                              :

                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(30))
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
                                    Text("Pickup City :   "+pickup!,
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26
                                      ),
                                    ),
                                    20.heightBox,
                                    Text("Day Activity :"+shikaravalue2!,
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26
                                      ),
                                    ),
                                    20.heightBox,
                                    Text("Car Name : "+_getCarName(),
                                      style: GoogleFonts.rowdies(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26
                                      ),
                                    ),
                                    20.heightBox,
                                    Row(
                                      children: [
                                        Text("Total Amount:      \t\t               "+_getPrices(),
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

                                    40.heightBox,
                                    GestureDetector(
                                      onTap: (){
                                        int amount= int.parse(_getPrices());
                                        openCheckout(amount);

CarBookings.add({

  "name":_getCarName(),
  "pickup_city":pickup!,
  "booking_date":_dateController.text.toString(),
  "day_activity":shikaravalue2,
  "amount":_getPrices(),
  "img":widget.a,
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
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      initialEntryMode: DatePickerEntryMode.calendar
    );
    if(_picked!=null){
      setState(() {
        _dateController.text=_picked.toString().split(" ")[0];
      });
    }
  }
String _getCarName(){

    if(widget.a=="assets/img/fortuner.png"){
      car="Fortuner";
    }
    else if(widget.a=="assets/img/amaze.png"){
      car="Amaze";
    }
    else{
      car="Traveller";
    }
    return car!;
}
String _getPrices(){

    if(car=="Fortuner"){
      for(int i=0;i<=4;i++){
        if(shikaravalue2==fortunerPrices.keys.elementAt(i)){
          finalPrice=fortunerPrices.values.elementAt(i) ;
        }
      }
    }
    else if(car=="Amaze"){
      for(int i=0;i<=4;i++){
        if(shikaravalue2==amazePrices.keys.elementAt(i)){
          finalPrice=amazePrices.values.elementAt(i) ;
        }
      }
    }
    else{
      for(int i=0;i<=4;i++){
        if(shikaravalue2==travellerPrices.keys.elementAt(i)){
          finalPrice=travellerPrices.values.elementAt(i) ;
        }
      }
    }
    return finalPrice;
}
}
