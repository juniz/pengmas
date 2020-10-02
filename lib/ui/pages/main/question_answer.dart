part of '../pages.dart';

// ignore: must_be_immutable
class QuestAnswerPage extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Materi materi;
          //context.bloc<PageBloc>().add(GoToTaskPage(materi));

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
                            Materi materi;
                            //context.bloc<PageBloc>().add(GoToTaskPage(materi));
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
              Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 20),
                  child: Align(
                    child: Text("Pertanyaan dari materi yang ditampilkan",
                        style: kTitleTextStyle, textAlign: TextAlign.center),
                  )),
              Column(children: <Widget>[
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
                                    hintText: 'Ceritakan pengalamanmu disini',
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
                SizedBox(height: 30),
                // Container(
                //   child: Align(
                //     child: Material(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(20.0),
                //       child: Container(
                //         height: 250,
                //         width: (MediaQuery.of(context).size.width -
                //             2 * defaultMargin -
                //             24),
                //         child: Column(
                //           children: <Widget>[
                //             Align(
                //                 child: Text(
                //               'Preview Jawaban',
                //               style: blackTextFont.copyWith(fontSize: 14),
                //               textAlign: TextAlign.left,
                //             )),
                //             Padding(
                //                 padding: const EdgeInsets.fromLTRB(
                //                     10, defaultMargin, 10, defaultMargin),
                //                 child: Text(
                //                   controller.text,
                //                   style: kTitleTextStyle,
                //                 )),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  width: 200,
                  margin: EdgeInsets.only(left: 50, right: 50),
                  child: RaisedButton(
                    child: Text('Lanjut',
                        style: whiteTextFont.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      context.bloc<PageBloc>().add(GoToByDoingPage());
                    },
                  ),
                ),
              ]),
              SizedBox(height: 100)
            ]),
          ]),
        ));
  }
}
