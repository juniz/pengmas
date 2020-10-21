part of 'pages.dart';

class Wrapper extends StatefulWidget {
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool isSigningIn = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<Null> getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isSigningIn = prefs.getBool("isSigningIn");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSigningIn == false) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? OnboardingScreen()
            : (pageState is OnLoginPage)
                ? SignInPage()
                : (pageState is OnDetailTugasMindfull)
                    ? DetailTugasMindfull(pageState.category)
                    : (pageState is OnDetailMateriPwb)
                        ? DetailMateriPwb(pageState.category)
                        : (pageState is OnDetailMateriKomunikasi)
                            ? DetailMateriKomunikasi(pageState.category)
                            : (pageState is OnDetailMateriPage)
                                ? DetailMateriPage(pageState.category)
                                : (pageState is OnTaskPage)
                                    ? TaskPage(
                                        pageState.materi, pageState.category)
                                    : (pageState is OnTaskMindfullPage)
                                        ? TaskMindfullPage(
                                            pageState.tugas, pageState.category)
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
                                                                            : (pageState is OnChoicesPage)
                                                                                ? ChoicesQuiz()
                                                                                : (pageState is OnQuestAnswerUPage) ? QuestAnswerUPage() : (pageState is OnSadarPageOne) ? SadarPageOne() : (pageState is OnMengamatiPageOne) ? MengamatiPageOne() : (pageState is OnPerspektifPageOne) ? PerspektifPageOne() : (pageState is OnKalenderPageOne) ? KalenderPageOne() : (pageState is OnKesimpulanPageOne) ? KesimpulanPage() : (pageState is OnTahukahPageOne) ? TahukahPage() : (pageState is OnSuaraPageOne) ? SuaraPageOne() : (pageState is OnPerkataanPageOne) ? PerkataanPage() : UserProfile());
  }
}
