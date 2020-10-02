part of '../pages.dart';

class KalenderPageOne extends StatefulWidget {
  @override
  _KalenderPageOneState createState() => _KalenderPageOneState();
}

class _KalenderPageOneState extends State<KalenderPageOne> {
  bool viewVisible1 = false;
  bool viewVisible2 = false;
  bool viewVisible3 = false;
  bool viewVisible4 = false;
  bool viewVisible5 = false;
  bool viewVisible6 = false;

  TextEditingController controller = TextEditingController();

  void showWidget1() {
    setState(() {
      viewVisible1 = true;
    });
  }

  void showWidget2() {
    setState(() {
      viewVisible2 = true;
    });
  }

  void showWidget3() {
    setState(() {
      viewVisible3 = true;
    });
  }

  void showWidget4() {
    setState(() {
      viewVisible4 = true;
    });
  }

  void showWidget5() {
    setState(() {
      viewVisible5 = true;
    });
  }

  void showWidget6() {
    setState(() {
      viewVisible6 = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible1 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToPerspektifPageOne());

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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        context.bloc<PageBloc>().add(GoToPerspektifPageOne());
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Latihan:\nKalender Stress',
                      textAlign: TextAlign.center,
                      style: blackTextFont.copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Kapan ?'),
                onPressed: showWidget1,
                color: accentColor4,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: viewVisible1,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text('Kapan situasi itu terjadi?',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Align(
              child: Material(
                color: Color(0xFFE4E4E4),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  height: 300,
                  width: (MediaQuery.of(context).size.width -
                      2 * defaultMargin -
                      24),
                  child: ListView(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, defaultMargin, 10, defaultMargin),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Widget Calendar',
                            ),
                            controller: controller,
                            maxLength: 200,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              controller.text,
                              style: kTitleTextStyle,
                            )),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Bagaimana ?'),
                onPressed: showWidget2,
                color: accentColor4,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: viewVisible2,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text('Ceritakan bagaimana kejadiannya !',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Align(
              child: Material(
                color: Color(0xFFE4E4E4),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  height: 300,
                  width: (MediaQuery.of(context).size.width -
                      2 * defaultMargin -
                      24),
                  child: ListView(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, defaultMargin, 10, defaultMargin),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: controller,
                            maxLength: 200,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              controller.text,
                              style: kTitleTextStyle,
                            )),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Kondisi Fisik'),
                onPressed: showWidget3,
                color: accentColor4,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: viewVisible3,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text(
                              'Apa yang terjadi pada tubuh Anda? Ceritakan dengan rinci! ',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Align(
              child: Material(
                color: Color(0xFFE4E4E4),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  height: 300,
                  width: (MediaQuery.of(context).size.width -
                      2 * defaultMargin -
                      24),
                  child: ListView(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, defaultMargin, 10, defaultMargin),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: controller,
                            maxLength: 200,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              controller.text,
                              style: kTitleTextStyle,
                            )),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Pikiran'),
                onPressed: showWidget4,
                color: accentColor4,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: viewVisible4,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text(
                              'Apa pikiran yang pertama kali muncul ketika Anda mengalami situasi ini?',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Align(
              child: Material(
                color: Color(0xFFE4E4E4),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  height: 300,
                  width: (MediaQuery.of(context).size.width -
                      2 * defaultMargin -
                      24),
                  child: ListView(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, defaultMargin, 10, defaultMargin),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: controller,
                            maxLength: 200,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              controller.text,
                              style: kTitleTextStyle,
                            )),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Perasaan'),
                onPressed: showWidget5,
                color: accentColor4,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: viewVisible5,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text(
                              'Apa yang Anda rasakan ketika mengalami situasi ini?',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Align(
              child: Material(
                color: Color(0xFFE4E4E4),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  height: 300,
                  width: (MediaQuery.of(context).size.width -
                      2 * defaultMargin -
                      24),
                  child: ListView(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, defaultMargin, 10, defaultMargin),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: controller,
                            maxLength: 200,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              controller.text,
                              style: kTitleTextStyle,
                            )),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Kecenderungan Tindakan'),
                onPressed: showWidget6,
                color: accentColor4,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: viewVisible6,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text(
                              'Berdasarkan pengalaman Anda sebelumnya, apa yang akan Anda lakukan ketika mengalami situasi seperti ini?',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Align(
              child: Material(
                color: Color(0xFFE4E4E4),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0x802196F3),
                child: Container(
                  height: 300,
                  width: (MediaQuery.of(context).size.width -
                      2 * defaultMargin -
                      24),
                  child: ListView(children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, defaultMargin, 10, defaultMargin),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            controller: controller,
                            maxLength: 200,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              controller.text,
                              style: kTitleTextStyle,
                            )),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 35),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 50, right: 50),
            child: RaisedButton(
              child: Text('Lanjut',
                  style: whiteTextFont.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400)),
              color: mainColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {
                context.bloc<PageBloc>().add(GoToKesimpulanPageOne());
              },
            ),
          ),
          SizedBox(height: 50),
        ])
      ])),
    );
  }
}
