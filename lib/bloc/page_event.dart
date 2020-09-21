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

class GoToDetailMateriMindfull extends PageEvent {
  final Category category;
  GoToDetailMateriMindfull(this.category);

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
