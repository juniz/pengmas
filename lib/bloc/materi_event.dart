part of 'materi_bloc.dart';

abstract class MateriEvent extends Equatable {}

class FetchMateriEvent extends MateriEvent {
  final int id;

  FetchMateriEvent(this.id);
  //FetchMateriEvent(int id);
  @override
  List<Object> get props => null;

  //get id => id;
}
