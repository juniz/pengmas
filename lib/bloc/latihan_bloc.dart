import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project1/models/models.dart';
import 'package:meta/meta.dart';
import 'package:project1/services/services.dart';

part 'latihan_event.dart';
part 'latihan_state.dart';

class LatihanBloc extends Bloc<LatihanEvent, LatihanState> {
  LatihansRepo latihansRepo;
  LatihanBloc({@required this.latihansRepo});

  @override
  LatihanState get initialState => LatihanInitialState();

  @override
  Stream<LatihanState> mapEventToState(
    LatihanEvent event,
  ) async* {
    if (event is FetchLatihanEvent) {
      yield LatihanLoadingState();
      try {
        List<Latihan> latihan = await latihansRepo.getLatihans(event.id);
        yield LatihanLoadedState(latihan: latihan);
      } catch (e) {
        LatihanErrorState(message: e.toString());
      }
    }
  }
}
