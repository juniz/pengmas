part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnDetailMateriPage extends PageState {
  final Category category;

  OnDetailMateriPage(this.category);

  @override
  List<Object> get props => [category];
}

class OnDetailMateriMindfull extends PageState {
  final Category category;

  OnDetailMateriMindfull(this.category);

  @override
  List<Object> get props => [category];
}

class OnDetailTugasMindfull extends PageState {
  final Category category;

  OnDetailTugasMindfull(this.category);

  @override
  List<Object> get props => [category];
}

class OnDetailMateriPwb extends PageState {
  final Category category;

  OnDetailMateriPwb(this.category);

  @override
  List<Object> get props => [category];
}

class OnDetailMateriKomunikasi extends PageState {
  final Category category;

  OnDetailMateriKomunikasi(this.category);

  @override
  List<Object> get props => [category];
}

class OnTaskPage extends PageState {
  final Materi materi;
  final Category category;
  OnTaskPage(this.materi, this.category);

  @override
  List<Object> get props => [materi, category];
}

class OnTaskMindfullPage extends PageState {
  final Category category;
  final TugasMindfull tugas;
  OnTaskMindfullPage(this.tugas, this.category);

  @override
  List<Object> get props => [tugas, category];
}

class OnByDoingPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRateEmojiPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnNoteHomePage extends PageState {
  @override
  List<Object> get props => [];
}

class OnGoalsPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSuccessPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnQuestAnswerPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnPopUpPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRateOnlyPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMoodOnlyPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnChoicesPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnQuestAnswerUPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSadarPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnMengamatiPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnPerspektifPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnKalenderPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnKesimpulanPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnTahukahPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnSuaraPageOne extends PageState {
  @override
  List<Object> get props => [];
}

class OnPerkataanPageOne extends PageState {
  @override
  List<Object> get props => [];
}
