

import 'package:bloc/bloc.dart';
import 'package:mytriptokashmir/cubit/app_cubit_states.dart';
//import 'package:mytriptokashmir/cubit/app_cubit_states.dart';
import 'package:mytriptokashmir/models/data_models.dart';

import 'package:mytriptokashmir/services/data_services.dart';


class AppCubits extends Cubit<CubitStates>{


  AppCubits({required this.data}):super(InitialState()){
    emit(WelcomeState());
  }
final DataServices data;
  late final places;

  void getData()async{

    try{

      emit(LoadingState());
          places=await data.getInfo();
          emit(LoadedState(places));
    }catch(e){

    }
  }
/*added by meeeeee
  final Services d;
  late final ps;

  void getD() async{
    try{
      emit(LoadingState());
      ps=await d.getInfo();
      emit(SearchState(ps));
    }catch(e){

    }
  }



  searchPage(){
    emit(SearchState(ps));
  }
  todo(Model d){
    emit(SearchedState(d));
  }
  */
  detailPage(DataModel data){
    emit(DetailState(data));
  }


  goHome(){
    emit(LoadedState(places));
  }
}