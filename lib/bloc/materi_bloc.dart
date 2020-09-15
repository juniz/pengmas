import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project1/models/models.dart';
import 'package:meta/meta.dart';
import 'package:project1/services/services.dart';

part 'materi_event.dart';
part 'materi_state.dart';

class MateriBloc extends Bloc<MateriEvent, MateriState> {
  MaterisRepo materisRepo;
  MateriBloc({@required this.materisRepo});

  @override
  MateriState get initialState => MateriInitialState();

  @override
  Stream<MateriState> mapEventToState(
    MateriEvent event,
  ) async* {
    if (event is FetchMateriEvent) {
      yield MateriLoadingState();
      try {
        List<Materi> materi = await materisRepo.getMateris(event.id);
        yield MateriLoadedState(materi: materi);
      } catch (e) {
        MateriErrorState(message: e.toString());
      }
    }
  }
}
