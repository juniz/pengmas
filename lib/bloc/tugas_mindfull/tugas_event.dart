part of '../tugas_mindfull/tugas_bloc.dart';

abstract class TugasEvent extends Equatable {}

class FetchTugasEvent extends TugasEvent {
  final int id;

  FetchTugasEvent(this.id);
  //FetchTugasEvent(int id);
  @override
  List<Object> get props => null;

  //get id => id;
}
