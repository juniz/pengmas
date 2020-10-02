part of '../pages.dart';

class ByDoing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayList(),
    );
  }
}

class PlayList extends StatefulWidget {
  PlayList({Key key}) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  String liveVideo = "https://www.youtube.com/watch?v=z-IR48Mb3W0";

  YoutubePlayerController _liveController;

  @override
  void initState() {
    _liveController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(liveVideo),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          isLive: true,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //context.bloc<PageBloc>().add(GoToDetailMateriPage());

        return;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(color: accentColor4),
          SafeArea(
              child: Container(
            color: Color(0xFFF6F7F9),
          )),
          ListView(children: <Widget>[
            Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                height: 50,
                child: Stack(
                  children: <Widget>[
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       context.bloc<PageBloc>().add(GoToTaskPage());
                    //     },
                    //     child: Icon(Icons.arrow_back),
                    //   ),
                    // ),
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
            Stack(
              children: <Widget>[
                Container(color: accentColor4),
                SafeArea(
                    child: Container(
                  color: Color(0xFFF6F7F9),
                )),
                Container(
                  child: SingleChildScrollView(
                      child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        child: Text(
                          'Video: Bernafas - Intro',
                          style: blackTextFont.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: defaultMargin, right: defaultMargin),
                        child: YoutubePlayer(
                          controller: _liveController,
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 50, right: 50),
              child: RaisedButton(
                child: Text('Selesai',
                    style: whiteTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w400)),
                color: mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: () {
                  context.bloc<PageBloc>().add(GoToRateEmojiPage());
                },
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
