

import 'package:equatable/equatable.dart';
import 'package:mytriptokashmir/cubit/app_cubit_states.dart';

import '../models/data_models.dart';

abstract class CubitStates extends Equatable{}



class InitialState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}


class WelcomeState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class LoadingState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}


class LoadedState extends CubitStates{

  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];

}


class DetailState extends CubitStates{

  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  List<Object?> get props => [place];

}
/*added by meeee
class SearchState extends CubitStates{

  SearchState(this.as);
  final List<Model> as;
  @override
  List<Object?> get props =>[as];
}


class SearchedState extends CubitStates{

  SearchedState(this.a);
  final Model a;
  @override
  // TODO: implement props
  List<Object?> get props => [a];

}*/