part of 'pages.dart';

class PopUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        context.bloc<PageBloc>().add(GoToSuccessPage());
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: mainColor,
                  child: Text(
                    'Tampilkan Popup!',
                    style: whiteTextFont,
                  ),
                  onPressed: () {
                    return Alert(
                        title: "Pop Up Komunikasi",
                        context: context,
                        desc: "Deskripsi materi komunikasi",
                        buttons: [
                          DialogButton(
                              color: mainColor,
                              child: Text("TIDAK", style: whiteTextFont),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          DialogButton(
                              color: mainColor,
                              child: Text("IYA", style: whiteTextFont),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ]).show();
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 200,
              // margin: EdgeInsets.only(left: 50, right: 50),
              child: RaisedButton(
                child: Text('Ke Rate Only',
                    style: whiteTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w400)),
                color: mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: () {
                  context.bloc<PageBloc>().add(GoToRateOnlyPage());
                },
              ),
            ),
            SizedBox(height: 100),
          ]),
        ]),
      ]),
    );
  }
}
