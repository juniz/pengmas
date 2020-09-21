part of 'pages.dart';

class ByDoingAudio extends StatefulWidget {
  final Category category;

  ByDoingAudio(this.category);

  @override
  _ByDoingAudioState createState() => _ByDoingAudioState();
}

class _ByDoingAudioState extends State<ByDoingAudio> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";
  MediaQueryData mediaQuery;
  _ByDoingAudioState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });

    audioPlayer.setReleaseMode(ReleaseMode.STOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToByDoingPage());

        return;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(color: accentColor4),
          SafeArea(
              child: Container(
            color: Color(0xFFF6F7F9),
          )),
          Stack(
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 45, bottom: 20, left: 10),
                  height: 50,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            context
                                .bloc<PageBloc>()
                                .add(GoToDetailMateriPage(widget.category));
                          },
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Latihan:\nTenang',
                          textAlign: TextAlign.center,
                          style: blackTextFont.copyWith(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 80.0),
                    _buildWidgetArtistPhoto(mediaQuery),
                    SizedBox(height: 48.0),
                    _buildWidgetLinearProgressIndicator(),
                    SizedBox(height: 4.0),
                    _buildWidgetLabelDurationMusic(),
                    SizedBox(height: 36.0),
                    _buildWidgetMusicInfo(),
                    _buildWidgetControlMusicPlayer(),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildWidgetArtistPhoto(MediaQueryData mediaQuery) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
          image: DecorationImage(
            image: AssetImage(
              "assets/images/tiara.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetLinearProgressIndicator() {
    return SizedBox(
      height: 2.0,
      child: LinearProgressIndicator(
        value: Duration.secondsPerMinute.toDouble(),
        valueColor: AlwaysStoppedAnimation<Color>(
          Color(0xFF7D9AFF),
        ),
        backgroundColor: Colors.grey.withOpacity(0.2),
      ),
    );
  }

  Widget _buildWidgetLabelDurationMusic() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // Text(
        //   "1:20",
        //   style: TextStyle(
        //     color: Colors.grey,
        //     fontSize: 12.0,
        //   ),
        // ),
        Text(
          durasi,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }

  Widget _buildWidgetMusicInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Mindfullnes anthem",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Campton_Light",
              fontSize: 20.0,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.0),
          Text(
            "Tiara Andini",
            style: TextStyle(
              fontFamily: "Campton_Light",
              color: Color(0xFF7D9AFF),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetControlMusicPlayer() {
    return Expanded(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: GestureDetector(
                    child: Icon(Icons.pause), onTap: pauseSound)),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: GestureDetector(
                  child: Icon(Icons.play_arrow),
                  onTap: () {
                    playSound(
                        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3");
                  },
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(child: Icon(Icons.stop), onTap: stopSound),
            ),
          ],
        ),
      ),
    );
  }
}
