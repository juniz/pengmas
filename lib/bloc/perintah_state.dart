part of 'perintah_bloc.dart';

abstract class PerintahState extends Equatable {}

class PerintahInitialState extends PerintahState {
  @override
  List<Object> get props => [];
}

class PerintahLoadingState extends PerintahState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class PerintahLoadedState extends PerintahState {
  List<Perintah> perintah;

  PerintahLoadedState({@required this.perintah});

  @override
  List<Object> get props => [perintah];
}

// ignore: must_be_immutable
class PerintahErrorState extends PerintahState {
  String message;

  PerintahErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
