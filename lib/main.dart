

/*
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mytriptokashmir/Authentication/screens/welcome_screen.dart';
import 'package:mytriptokashmir/Authentication/provider/auth_provider.dart';
import 'package:mytriptokashmir/Authentication/screens/register_screen.dart';
import 'package:mytriptokashmir/Authentication/screens/welcome_screen.dart';
import 'package:mytriptokashmir/pages/welcome_page.dart';
import 'package:mytriptokashmir/services/data_services.dart';
import 'package:provider/provider.dart';

import 'cubit/app_cubit_logics.dart';
import 'cubit/app_cubits.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

 /*await FirebaseAppCheck.instance.activate(
    webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


   return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AuthProvider())
      ],
      child: GetMaterialApp(
        title: 'My Trip To Kashmir',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
const WelcomeScreen(),
   /*   BlocProvider<AppCubits>(
          create: (context)=>AppCubits(
            data: DataServices(),
          ),
          child: AppCubitLogics(),
        )
*/

      ),
    );
  }
}
*/





import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mytriptokashmir/Authentication/screens/register_screen.dart';
import 'package:mytriptokashmir/Authentication/screens/splash.dart';
import 'package:mytriptokashmir/Authentication/screens/welcome_screen.dart';


import 'package:mytriptokashmir/services/data_services.dart';
import 'package:provider/provider.dart';

import 'Authentication/provider/auth_provider.dart';
import 'cubit/app_cubit_logics.dart';
import 'cubit/app_cubits.dart';
import 'package:mytriptokashmir/pages/welcome_page.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await FirebaseAppCheck.instance.activate(
  //webRecaptchaSiteKey:'recaptcha-v3-site-key',
  //);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: GetMaterialApp(
        title: 'My Trip To Kashmir',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:Splash(),
       //WelcomeScreen(),
        /*  BlocProvider<AppCubits>(
          create: (context)=>AppCubits(
            data: DataServices(),
          ),
          child: AppCubitLogics(),
        )
*/

      ),
    );
  }
}
