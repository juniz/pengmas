part of 'materi_bloc.dart';

abstract class MateriState extends Equatable {}

class MateriInitialState extends MateriState {
  @override
  List<Object> get props => [];
}

class MateriLoadingState extends MateriState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class MateriLoadedState extends MateriState {
  List<Materi> materi;

  MateriLoadedState({@required this.materi});

  @override
  List<Object> get props => [materi];
}

// ignore: must_be_immutable
class MateriErrorState extends MateriState {
  String message;

  MateriErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
