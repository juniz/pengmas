part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class GoToDetailMateriPage extends PageEvent {
  final Category category;
  GoToDetailMateriPage(this.category);

  @override
  List<Object> get props => [category];
}

class GoToDetailTugasMindfull extends PageEvent {
  final Category category;
  GoToDetailTugasMindfull(this.category);

  @override
  List<Object> get props => [category];
}

class GoToDetailMateriPwb extends PageEvent {
  final Category category;
  GoToDetailMateriPwb(this.category);

  @override
  List<Object> get props => [category];
}

class GoToDetailMateriKomunikasi extends PageEvent {
  final Category category;
  GoToDetailMateriKomunikasi(this.category);

  @override
  List<Object> get props => [category];
}

class GoToTaskPage extends PageEvent {
  final Materi materi;
  final Category category;
  GoToTaskPage(this.materi, this.category);

  @override
  List<Object> get props => [materi, category];
}

class GoToTaskMindfullPage extends PageEvent {
  final TugasMindfull tugas;
  final Category category;
  GoToTaskMindfullPage(this.tugas, this.category);

  @override
  List<Object> get props => [tugas, category];
}

class GoToByDoingPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRateEmojiPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToNoteHomePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToGoalsPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSuccessPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToQuestAnswerPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToPopUpPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRateOnlyPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMoodOnlyPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToChoicesPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToQuestAnswerUPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSadarPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMengamatiPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToPerspektifPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToKalenderPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToKesimpulanPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToTahukahPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSuaraPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToPerkataanPageOne extends PageEvent {
  @override
  List<Object> get props => [];
}
