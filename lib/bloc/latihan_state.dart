part of 'latihan_bloc.dart';

abstract class LatihanState extends Equatable {}

class LatihanInitialState extends LatihanState {
  @override
  List<Object> get props => [];
}

class LatihanLoadingState extends LatihanState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class LatihanLoadedState extends LatihanState {
  List<Latihan> latihan;

  LatihanLoadedState({@required this.latihan});

  @override
  List<Object> get props => [latihan];
}

// ignore: must_be_immutable
class LatihanErrorState extends LatihanState {
  String message;

  LatihanErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
