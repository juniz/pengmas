part of 'latihan_bloc.dart';

abstract class LatihanEvent extends Equatable {}

class FetchLatihanEvent extends LatihanEvent {
  final int id;

  FetchLatihanEvent(this.id);
  //FetchMateriEvent(int id);
  @override
  List<Object> get props => [id];

  //get id => id;
}
