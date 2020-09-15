part of 'pages.dart';

class MoodOnlyPage extends StatefulWidget {
  final List<String> mood = [
    "Gembira",
    "Antusias",
    "Tenang",
    "Santai",
    "Takut",
    "Stress",
    "Marah",
    "Gelisah",
    "Kewalahan"
  ];

  @override
  _MoodOnlyPageState createState() => _MoodOnlyPageState();
}

class _MoodOnlyPageState extends State<MoodOnlyPage> {
  var myFeedbackText = "SANGAT BURUK";
  var sliderValue = 0.0;
  IconData myFeedback = FontAwesomeIcons.sadTear;
  Color myFeedbackColor = mainColor;
  List<String> selectedMood = [];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToRateOnlyPage());

        return;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(color: accentColor4),
          SafeArea(
              child: Container(
            color: Color(0xFFF6F7F9),
          )),
          ListView(
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  color: accentColor4,
                ),
                SafeArea(
                    child: Container(
                  color: Color(0xFFF6F7F9),
                )),
                Center(
                  child: Container(
                    // color: Color(0xFFF6F7F9),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Apa yang dirasakan setelah kegiatan ?',
                              textAlign: TextAlign.center,
                              style: purpleTextFont.copyWith(fontSize: 16),
                            ),
                            SizedBox(height: 20),
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: generateMoodWidget(context),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 50,
                          width: 200,
                          // margin: EdgeInsets.only(left: 50, right: 50),
                          child: RaisedButton(
                            child: Text('Lanjut',
                                style: whiteTextFont.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w400)),
                            color: mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {
                              // context.bloc<PageBloc>().add(GoToSuccessPage());
                            },
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                )
              ])
            ],
          ),
        ]),
      ),
    );
  }

  List<Widget> generateMoodWidget(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * defaultMargin - 24) / 3;

    return widget.mood
        .map((e) => SelectableBox(
              e,
              width: width,
              isSelected: selectedMood.contains(e),
              onTap: () {
                onSelectMood(e);
              },
            ))
        .toList();
  }

  void onSelectMood(String mood) {
    if (selectedMood.contains(mood)) {
      setState(() {
        selectedMood.remove(mood);
      });
    } else {
      if (selectedMood.length < 2) {
        setState(() {
          selectedMood.add(mood);
        });
      }
    }
  }
}
