part of '../pages.dart';

class PerspektifPageOne extends StatefulWidget {
  @override
  _PerspektifPageOneState createState() => _PerspektifPageOneState();
}

class _PerspektifPageOneState extends State<PerspektifPageOne> {
  bool viewVisible1 = false;
  bool viewVisible2 = false;
  bool viewVisible3 = false;
  bool viewVisible4 = false;

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

  void hideWidget() {
    setState(() {
      viewVisible1 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMengamatiPageOne());

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
                        context.bloc<PageBloc>().add(GoToMengamatiPageOne());
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Latihan:\nPerspektif yang baru',
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
                child: Text('Secara diam-diam'),
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
                            'Pilihlah momen ketika anak Anda tidak menyadari bahwa Anda sedang memperhatikannya.\nBerikan perhatian Anda sepenuhnya dalam melakukan pengamatan secara diam-diam.',
                            textAlign: TextAlign.left,
                            style: blackTextFont.copyWith(fontSize: 20)),
                      )))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Perspektif baru'),
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
                              'Amati anak Anda dengan perspektif yang benar-benar baru.\nBayangkan Anda baru pertama kali melihat anak Anda sehingga Anda tidak memiliki penilaian apa pun sebelumnya.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Fokus'),
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
                              'Selama mengamati, mungkin muncul penilaian-penilaian yang selama ini kerap Anda berikan padanya.\nSadari ketika pikiran tersebut muncul, lalu perlahan bawa kembali pikiran Anda pada tujuan latihan ini, yaitu mengamati dengan perspektif baru.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Catat'),
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
                              'Cobalah untuk mendeskripsikan pengamatan Anda, kemudian tuliskan setidaknya tiga hal dari anak Anda yang baru Anda sadari ketika melakukan latihan ini.\nAnda boleh menuliskan lebih dari tiga jika Anda menemukan lebih banyak hal baru.',
                              textAlign: TextAlign.justify,
                              style: blackTextFont.copyWith(fontSize: 20))))),
            ],
          ),
          SizedBox(height: 25),
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
                              hintText: 'Saya baru menyadari...',
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
                context.bloc<PageBloc>().add(GoToKalenderPageOne());
              },
            ),
          ),
          SizedBox(height: 50),
        ])
      ])),
    );
  }
}
