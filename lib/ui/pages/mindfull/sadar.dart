part of '../pages.dart';

class SadarPageOne extends StatefulWidget {
  @override
  _SadarPageOneState createState() => _SadarPageOneState();
}

class _SadarPageOneState extends State<SadarPageOne> {
  bool viewVisible1 = false;
  bool viewVisible2 = false;
  bool viewVisible3 = false;
  bool viewVisible4 = false;
  bool viewVisible5 = false;
  bool viewVisible6 = false;
  bool viewVisible7 = false;
  bool viewVisible8 = false;

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

  void showWidget7() {
    setState(() {
      viewVisible7 = true;
    });
  }

  void showWidget8() {
    setState(() {
      viewVisible8 = true;
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
        ///context.bloc<PageBloc>().add(GoToTaskPage());

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
                        //context.bloc<PageBloc>().add(GoToTaskPage());
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Latihan:\nSadar Ketika Makan',
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
                child: Text('Pegang'),
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
                          child: GestureDetector(
                        onTap: hideWidget,
                        child: Text(
                            'Ambil kismis/coklat menggunakan jari telunjuk dan ibu jari.\nBerikan perhatian Anda pada kismis/coklat tersebut. ',
                            textAlign: TextAlign.left,
                            style: blackTextFont.copyWith(fontSize: 20)),
                      )))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Lihat'),
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
                          child: Text(
                              'Amati selayaknya kismis/coklat tersebut merupakan benda yang jatuh dari Planet Mars dan Anda baru pertama kali melihatnya.\nPerhatikan warnanya, perhatikan bagian yang terkena cahaya, perhatikan guratan-guratannya, temukan fitur unik pada kismis/coklat tadi. ',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Sentuh'),
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
                              'Rasakan tekstur permukaannya pada jemari Anda.\nAnda dapat memejamkan mata untuk mempertajam kepekaan indra peraba Anda.  ',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Cium'),
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
                              'Letakkan kismis/coklat tadi di bawah hidung Anda selama beberapa detik dan bernafaslah seperti biasa. Sadari aroma yang muncul.\nSadari juga efek yang timbul pada mulut dan perut Anda. ',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Letakkan'),
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
                              'Perlahan-lahan, bawa ia ke mulut Anda. Sadari bagaimana tangan Anda tahu persis di mana harus meletakkan kismis/coklat tersebut pada mulut Anda. Berikan waktu sekitar sepuluh detik untuk merasakan sentuhan antara makanan dengan mulut.\nRasakan apabila mulut Anda memproduksi air liur sebagai bentuk antisipasi kehadiran makanan.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Kunyah'),
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
                              'Ketika tubuh Anda telah siap, lakukan satu hingga dua gigitan dengan penuh kesadaran. Amati apa yang terjadi setelahnya. Jangan terburu-buru menelan.\nPerhatikan bagaimana tekstur dan rasa makanan tersebut perlahan berubah seiring Anda mengunyahnya.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Telan'),
                onPressed: showWidget7,
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
                  visible: viewVisible7,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text(
                              'Ketika Anda merasa telah siap untuk menelan, pusatkan perhatian Anda pada proses menelan.\nRasakan bagaimana ia bergerak turun perlahan-lahan dari kerongkongan menuju perut Anda.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Sadari'),
                onPressed: showWidget8,
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
                  visible: viewVisible8,
                  child: Container(
                      // height: 200,
                      // width: 200,
                      // color: Colors.green,
                      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Center(
                          child: Text(
                              'Sadari apa yang tubuh Anda rasakan setelah melakukan latihan ini.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
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
                context.bloc<PageBloc>().add(GoToMengamatiPageOne());
              },
            ),
          ),
          SizedBox(height: 50),
        ])
      ])),
    );
  }
}
