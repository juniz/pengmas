part of '../tugas_mindfull/tugas_bloc.dart';

abstract class TugasState extends Equatable {}

class TugasInitialState extends TugasState {
  @override
  List<Object> get props => [];
}

class TugasLoadingState extends TugasState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class TugasLoadedState extends TugasState {
  List<TugasMindfull> tugas;

  TugasLoadedState({@required this.tugas});

  @override
  List<Object> get props => [tugas];
}

// ignore: must_be_immutable
class TugasErrorState extends TugasState {
  String message;

  TugasErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
