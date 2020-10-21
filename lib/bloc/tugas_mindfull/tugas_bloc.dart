import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project1/models/models.dart';
import 'package:meta/meta.dart';
import 'package:project1/services/services.dart';

part 'tugas_event.dart';
part 'tugas_state.dart';

class TugasBloc extends Bloc<TugasEvent, TugasState> {
  TugasRepo tugasRepo;
  TugasBloc({@required this.tugasRepo});

  @override
  TugasState get initialState => TugasInitialState();

  @override
  Stream<TugasState> mapEventToState(
    TugasEvent event,
  ) async* {
    if (event is FetchTugasEvent) {
      yield TugasLoadingState();
      try {
        List<TugasMindfull> tugas = await tugasRepo.getTugas(event.id);
        yield TugasLoadedState(tugas: tugas);
      } catch (e) {
        TugasErrorState(message: e.toString());
      }
    }
  }
}
