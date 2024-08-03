import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayPage extends StatefulWidget{


  const RazorpayPage({Key? key}) : super(key: key);

  @override

  _RazorpayPageState createState() => _RazorpayPageState();
}

class _RazorpayPageState extends State<RazorpayPage>{

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(height:100),


          Padding(padding: EdgeInsets.all(8),
            child: TextFormField(
              cursorColor: Colors.white,
              autofocus: false,
              style: TextStyle(color: Colors.white),
              controller: amtController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
                labelStyle: TextStyle(color: Colors.white),)
              ,validator: (value){
              if(value==null ||value.isEmpty){
                return 'Please enter some text';
              }
              return null;
            },

            ),
          ),


          SizedBox(height: 30,),


          ElevatedButton(onPressed: (){
            if(amtController.text.toString().isNotEmpty){
              setState(() {
                int amount = int.parse(amtController.text.toString());
                openCheckout(amount);
              });
            }
          }, child: Padding(padding: EdgeInsets.all(8),
            child: Text("MAke PAyment"),
          ))
        ],
      ),
      ),
    );
  }
}