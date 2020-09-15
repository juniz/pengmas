part of 'perintah_bloc.dart';

abstract class PerintahEvent extends Equatable {}

class FetchPerintahEvent extends PerintahEvent {
  final int id;

  FetchPerintahEvent(this.id);
  //FetchMateriEvent(int id);
  @override
  List<Object> get props => [id];

  //get id => id;
}
