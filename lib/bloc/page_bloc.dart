import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project1/models/models.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => OnInitialPage();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToLoginPage) {
      yield OnLoginPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToDetailMateriMindfull) {
      yield OnDetailMateriMindfull(event.category);
    } else if (event is GoToDetailMateriPwb) {
      yield OnDetailMateriPwb(event.category);
    } else if (event is GoToDetailMateriKomunikasi) {
      yield OnDetailMateriKomunikasi(event.category);
    } else if (event is GoToDetailMateriPage) {
      yield OnDetailMateriPage(event.category);
    } else if (event is GoToTaskPage) {
      yield OnTaskPage(event.materi, event.category);
    } else if (event is GoToByDoingPage) {
      yield OnByDoingPage();
    } else if (event is GoToRateEmojiPage) {
      yield OnRateEmojiPage();
    } else if (event is GoToNoteHomePage) {
      yield OnNoteHomePage();
    } else if (event is GoToGoalsPage) {
      yield OnGoalsPage();
    } else if (event is GoToSuccessPage) {
      yield OnSuccessPage();
    } else if (event is GoToQuestAnswerPage) {
      yield OnQuestAnswerPage();
    } else if (event is GoToPopUpPage) {
      yield OnPopUpPage();
    } else if (event is GoToRateOnlyPage) {
      yield OnRateOnlyPage();
    } else if (event is GoToMoodOnlyPage) {
      yield OnMoodOnlyPage();
    } else if (event is GoToChoicesPage) {
      yield OnChoicesPage();
    } else if (event is GoToQuestAnswerUPage) {
      yield OnQuestAnswerUPage();
    } else if (event is GoToSadarPageOne) {
      yield OnSadarPageOne();
    } else if (event is GoToMengamatiPageOne) {
      yield OnMengamatiPageOne();
    } else if (event is GoToPerspektifPageOne) {
      yield OnPerspektifPageOne();
    } else if (event is GoToKalenderPageOne) {
      yield OnKalenderPageOne();
    } else if (event is GoToKesimpulanPageOne) {
      yield OnKesimpulanPageOne();
    } else if (event is GoToTahukahPageOne) {
      yield OnTahukahPageOne();
    } else if (event is GoToSuaraPageOne) {
      yield OnSuaraPageOne();
    } else if (event is GoToPerkataanPageOne) {
      yield OnPerkataanPageOne();
    }
  }
}
