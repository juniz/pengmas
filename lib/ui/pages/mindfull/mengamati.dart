part of '../pages.dart';

class MengamatiPageOne extends StatefulWidget {
  @override
  _MengamatiPageOneState createState() => _MengamatiPageOneState();
}

class _MengamatiPageOneState extends State<MengamatiPageOne> {
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
        context.bloc<PageBloc>().add(GoToSadarPageOne());

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
                        context.bloc<PageBloc>().add(GoToSadarPageOne());
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Latihan:\nMengamati Tubuh',
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
                child: Text('Posisi yg nyaman'),
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
                            'Duduklah dengan nyaman, pada posisi dan tempat yang membuat Anda merasa tenang dan aman dari gangguan. Pejamkan mata perlahan-lahan.',
                            textAlign: TextAlign.left,
                            style: blackTextFont.copyWith(fontSize: 20)),
                      )))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Bernafas'),
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
                              'Sadari jalan nafas Anda, rasakan sensasinya pada tubuh Anda.\nKetika Anda telah siap, fokuskan perhatian Anda pada tubuh Anda. Rasakan sentuhan lantai atau karpet yang mengenai kaki Anda.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Niat'),
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
                              'Sadari bahwa Anda melakukan ini untuk menyingkap pengalaman yang mungkin selama ini terlewatkan.\nTidak untuk mengubahnya sama sekali',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Perut'),
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
                              'Fokuskan perhatian Anda pada bagian perut Anda. Rasakan perubahan yang terjadi pada perut seiring dengan Anda menghirup dan menghembuskan nafas.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Kaki'),
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
                              'Sekarang bawa perhatian Anda pada kaki Anda.\nKaki kiri, kaki kanan, hingga ke jari-jemari kaki.\nTarik nafas dalam, hembuskan perlahan-lahan. Rasakan nafas Anda mengalir ke bawah. Melalui kaki-kaki Anda, hingga sampai ke ibu jari kaki.\nLanjutkan memindai tubuh Anda. Berikan waktu untuk menyadari setiap bagian dari tubuh Anda.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Pikiran'),
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
                              'Selama memusatkan perhatian pada tubuh dan nafas Anda, sesekali pikiran Anda mungkin berkelana pada hal lain.\nTidak apa, itu wajar. Ketika Anda menyadari pikiran Anda beralih dari nafas Anda, amati ke mana pikiran Anda pergi, kemudian perlahan, ajak kembali pikiran Anda agar fokus pada nafas dan segala hal yang dirasakan oleh tubuh Anda.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Sadari'),
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
                              'Setelah mengamati setiap bagian tubuh Anda, beri waktu beberapa saat untuk merasakan kembali tubuh Anda seutuhnya, serta rasakan setiap hela nafas masuk dan keluar dari tubuh Anda.',
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
                context.bloc<PageBloc>().add(GoToPerspektifPageOne());
              },
            ),
          ),
          SizedBox(height: 50),
        ])
      ])),
    );
  }
}
