part of 'pages.dart';

class Wrapper extends StatelessWidget {
  OnDetailMateriPage state;
  @override
  Widget build(BuildContext context) {
    if (!(prevPageEvent is GoToSplashPage)) {
      prevPageEvent = GoToSplashPage();
      context.bloc<PageBloc>().add(prevPageEvent);
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        prevPageEvent = GoToLoginPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? OnboardingScreen()
            : (pageState is OnLoginPage)
                ? SignInPage()
                : (pageState is OnDetailMateriMindfull)
                    ? DetailMateriMindfull(pageState.category)
                    : (pageState is OnDetailMateriPwb)
                        ? DetailMateriPwb(pageState.category)
                        : (pageState is OnDetailMateriKomunikasi)
                            ? DetailMateriKomunikasi(pageState.category)
                            : (pageState is OnDetailMateriPage)
                                ? DetailMateriPage(pageState.category)
                                : (pageState is OnTaskPage)
                                    ? TaskPage(
                                        pageState.materi, pageState.category)
                                    : (pageState is OnByDoingPage)
                                        ? ByDoing()
                                        : (pageState is OnRateEmojiPage)
                                            ? RateEmoji()
                                            : (pageState is OnNoteHomePage)
                                                ? NoteHomePage()
                                                : (pageState is OnGoalsPage)
                                                    ? GoalsPage()
                                                    : (pageState
                                                            is OnSuccessPage)
                                                        ? SuccessPage()
                                                        : (pageState
                                                                is OnQuestAnswerPage)
                                                            ? QuestAnswerPage()
                                                            : (pageState
                                                                    is OnPopUpPage)
                                                                ? PopUpPage()
                                                                : (pageState
                                                                        is OnRateOnlyPage)
                                                                    ? RateOnlyPage()
                                                                    : (pageState
                                                                            is OnMoodOnlyPage)
                                                                        ? MoodOnlyPage()
                                                                        : (pageState
                                                                                is OnChoicesPage)
                                                                            ? ChoicesQuiz()
                                                                            : (pageState is OnQuestAnswerUPage)
                                                                                ? QuestAnswerUPage()
                                                                                : (pageState is OnSadarPageOne) ? SadarPageOne() : (pageState is OnMengamatiPageOne) ? MengamatiPageOne() : (pageState is OnPerspektifPageOne) ? PerspektifPageOne() : (pageState is OnKalenderPageOne) ? KalenderPageOne() : (pageState is OnKesimpulanPageOne) ? KesimpulanPage() : (pageState is OnTahukahPageOne) ? TahukahPage() : (pageState is OnSuaraPageOne) ? SuaraPageOne() : (pageState is OnPerkataanPageOne) ? PerkataanPage() : UserProfile());
    ;
  }
}
