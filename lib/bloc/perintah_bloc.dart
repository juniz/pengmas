import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project1/models/models.dart';
import 'package:meta/meta.dart';
import 'package:project1/services/services.dart';

part 'perintah_event.dart';
part 'perintah_state.dart';

class PerintahBloc extends Bloc<PerintahEvent, PerintahState> {
  PerintahRepo perintahRepo;
  PerintahBloc({@required this.perintahRepo});

  @override
  PerintahState get initialState => PerintahInitialState();

  @override
  Stream<PerintahState> mapEventToState(
    PerintahEvent event,
  ) async* {
    if (event is FetchPerintahEvent) {
      yield PerintahLoadingState();
      try {
        print(event.id);
        List<Perintah> perintah = await perintahRepo.getPerintah(event.id);
        yield PerintahLoadedState(perintah: perintah);
      } catch (e) {
        PerintahErrorState(message: e.toString());
      }
    }
  }
}
