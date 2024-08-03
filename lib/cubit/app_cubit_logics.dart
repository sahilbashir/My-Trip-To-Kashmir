import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytriptokashmir/cubit/app_cubit_states.dart';
import 'package:mytriptokashmir/cubit/app_cubits.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/pages/detail_page.dart';
import 'package:mytriptokashmir/pages/home_page.dart';
import 'package:mytriptokashmir/pages/welcome_page.dart';

import '../pages/nav_pages/main_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: (context,state){
          if(state is WelcomeState){
            return WelcomePage();
          }if(state is LoadedState){
            return MainPage();
          }
          if(state is DetailState){
            return DetailPage();
          }
          if(state is LoadingState){
            return  Center(child: CircularProgressIndicator(color: AppColors.textColor1,),);
          }

          else{
            return Container();
          }
        },
      ),
    );
  }
}
