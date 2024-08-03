
import 'package:intl/intl.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/cubit/app_cubit_states.dart';
import 'package:mytriptokashmir/cubit/app_cubits.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:velocity_x/velocity_x.dart';



import '../misc/colors.dart';
import '../widgets/app_buttons.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  late Razorpay _razorpay;
  TextEditingController amtController= TextEditingController();


  void openCheckout(amount)async{
    amount =amount*100;
    var options={
      'key':'rzp_test_agNt2ADXZBWxNd',
      'amount':amount,
      'name':'My Trip To Kashmir',
      'timeout':'180',
      'description':'Booked',
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



  int gottenStars=4;
  int SelectedIndex=-1;
  bool isPressed=false;
  bool isFinished=false;



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

  var Bookings= FirebaseFirestore.instance.collection("Bookings");

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return BlocBuilder<AppCubits,CubitStates>(builder: (context,state){
      DetailState detail = state as DetailState;
      return Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [

              Positioned(
                  left: 0,right: 0,
                  child:

                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      viewportFraction: 1.0,
                      aspectRatio: 16/9,
                      enlargeCenterPage: true,
                      itemCount: 3, itemBuilder: (context,index){
                    return Image.network("https://sahilbashir.github.io/MyTripToKashmirServer"+detail.place.img,fit: BoxFit.cover,width: double.infinity,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 15)).make();
                  })

                  /*Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer"+detail.place.img),
                            //image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+detail.place.img),
                            fit: BoxFit.cover
                        )
                    ),

                  )*/


              ),
              Positioned(
                  left: 20,
                  top: 70,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        BlocProvider.of<AppCubits>(context).goHome();
                      }, icon: Icon(Icons.arrow_back_sharp)
                        ,color: AppColors.mainColor,
                      )
                    ],
                  )),

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text(detail.place.name,style: GoogleFonts.zenAntique(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 25
                              ),
                              ),
                              //AppLargeText(text: detail.place.name,color: Colors.black.withOpacity(0.8)),
                             Text(detail.place.price.toString(),style:
                               GoogleFonts.zenAntique(
                                 color: AppColors.mainColor,
                                 fontSize: 25
                               ),)
                              // AppLargeText(text: "\$"+detail.place.price.toString(),color: AppColors.mainColor),
                            ],
                          ),

                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: AppColors.mainColor,),
                              SizedBox(width: 10,),

                             Text(detail.place.location,style: GoogleFonts.badScript(
                               color: AppColors.textColor1,fontSize: 18,fontWeight: FontWeight.bold
                             ),)
                              //AppText(text: detail.place.location,color: AppColors.textColor1,)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Wrap(
                                children: List.generate(5, (index) {
                                  return Icon(Icons.star,color: index<detail.place.stars?AppColors.starColor:AppColors.textColor1,);
                                }),
                              ),
                              SizedBox(width: 10,),
                             // AppText(text: "(5.0)",color: AppColors.textColor2,),
Text("(5.0)",style: GoogleFonts.zenAntique(color: AppColors.textColor2),)
                            ],
                          ),
                          SizedBox(height: 25,),
                       //   AppLargeText(text: "People",color: Colors.black.withOpacity(0.8),size: 20,),
                         Text("People",style: GoogleFonts.zenAntique(
                           color: Colors.black.withOpacity(0.8),
                           fontSize: 20
                         ),),
                          SizedBox(height: 5,),
                         // AppText(text: "Number of People in your group",color: AppColors.mainTextColor,),
Text("Number of People in your group",style: GoogleFonts.zenAntique(
  color: AppColors.mainTextColor,fontSize: 15
),),
                          SizedBox(height: 10,),
                          Wrap(
                            children: List.generate(5, (index) {
                              return InkWell(
                                onTap: (){
                                  setState(() {
                                    SelectedIndex=index;
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: AppButtons(color: SelectedIndex==index?Colors.white:Colors.black,
                                    backgroundColor: SelectedIndex==index?Colors.black:AppColors.buttonBackground,
                                    borderColor: SelectedIndex==index?Colors.black:AppColors.buttonBackground,
                                    size: 50,
                                    text: (index+1).toString(),),
                                ),
                              );
                            }),
                          ),
                          SizedBox(height: 20,),
                        //  AppLargeText(text: "Description",color: Colors.black.withOpacity(0.8),size: 20,),
                         Text("Description",style: GoogleFonts.zenAntique(
                           color: Colors.black.withOpacity(0.8),fontSize: 20
                         ),),
                          SizedBox(height: 10,),
                          //AppText(text: detail.place.description,color: AppColors.mainTextColor,),
Text(detail.place.description,style: GoogleFonts.zenAntique(color: AppColors.mainTextColor,fontSize: 15),),


                          //Me Adding

                          SizedBox(height: 20,),
                       //   AppLargeText(text: "Activities Included...",color: Colors.black.withOpacity(0.8),size: 20,),
                          Text("Activities Included",style: GoogleFonts.zenAntique(
                              color: Colors.black.withOpacity(0.8),fontSize: 20
                          ),),
                          SizedBox(height: 10,),
                          

                            

                        BulletedList(
                            bullet: Icon(Icons.check,color: AppColors.mainColor,),

                            listItems: [

                             Text(detail.place.a1,style: GoogleFonts.zenAntique(color: Colors.grey,fontSize: 18),),
                             // AppText(text: detail.place.a1,size: 18,color: Colors.grey,),
                              Text(detail.place.a2,style: GoogleFonts.zenAntique(color: Colors.grey,fontSize: 18),),
                              Text(detail.place.a3,style: GoogleFonts.zenAntique(color: Colors.grey,fontSize: 18),),
                              Text(detail.place.a4,style: GoogleFonts.zenAntique(color: Colors.grey,fontSize: 18),),
                              Text(detail.place.a5,style: GoogleFonts.zenAntique(color: Colors.grey,fontSize: 18),),
                              //AppText(text: detail.place.a2,size: 18,color: Colors.grey,),
                              //AppText(text: detail.place.a3,size: 18,color: Colors.grey,),
                              //AppText(text: detail.place.a4,size: 18,color: Colors.grey,),
                              //AppText(text: detail.place.a5,size: 18,color: Colors.grey,),
                            ]),


                        
                        ],
                      ),
                    ),

                  )
              ),

              Positioned(
                  bottom: 20,left: 20,right: 20,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          isPressed==false?Get.snackbar("Liked", "You added ${detail.place.name}  to Wishlist...",

                          duration: Duration(seconds: 2),icon: Icon(Icons.favorite),shouldIconPulse: true,backgroundColor: AppColors.mainColor,colorText: Colors.white):

                          Get.snackbar("Removed", "You removed ${detail.place.name} from Wishlist...",

                              duration: Duration(seconds: 2),icon: Icon(Icons.heart_broken),
                              backgroundColor: AppColors.mainColor,colorText: Colors.white);
                          setState(() {
  isPressed=!isPressed;
});
              },

                        child:Container(
                          child:

                AppButtons(color: AppColors.mainColor,
                          backgroundColor: Colors.white,
                          borderColor: AppColors.mainColor,
                          size: 60,
                          isIcon: true,
                          icon: isPressed==true? Icons.favorite:Icons.favorite_border,),
                      ),
      ),
                      SizedBox(width: 10,),

                      //  ResponsiveButton(
                      //  isResponsive: true,
                      //),


                      Expanded(
                        child: Container(
                        //height: 20,
                          width: 100,
                          //padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: SwipeableButtonView(

isFinished: isFinished,
                              onWaitingProcess: (){
                                Future.delayed(Duration(seconds: 1),(){
                                  setState(() {
                                    isFinished=true;
                                  });
                                });
                              },
                            onFinish: () async {
                              // await Get.to(()=>MyPage(),);
 openCheckout(detail.place.price);
 Bookings.add({
   "name":detail.place.name,
   "persons":SelectedIndex,
   "img":"https://sahilbashir.github.io/MyTripToKashmirServer"+detail.place.img,
   "price":detail.place.price,
   "uid":ap.userModel.uid,
   "booked_at":DateFormat('yyyy-MM-dd ').format(DateTime.now())
 });
                              await Get.snackbar("Trip Added","You added ${detail.place.name} to cart",snackPosition: SnackPosition.TOP,
                              duration: Duration(seconds: 2,),
                                icon: Icon(Icons.add_alert),
                                backgroundColor: AppColors.mainColor,
                                colorText: Colors.white

                              );
                              setState(() {
                                isFinished = false;
                              });
                            },

                            activeColor: AppColors.mainColor,
                              buttonWidget: Container(
                                child: Icon(Icons.arrow_forward_ios_rounded,

                                  color: AppColors.mainColor,
                                ),
                              ),
                              buttonText: "Book Trip",
                            buttontextstyle: GoogleFonts.caveat(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),

                          ),
                        ),
                      ),









                    ],
                  ))
            ],
          ),
        ),
      );
    });
  }
}