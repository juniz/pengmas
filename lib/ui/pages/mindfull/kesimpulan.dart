part of '../pages.dart';

class KesimpulanPage extends StatelessWidget {
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
        SizedBox(height: 30),
        Column(
          children: <Widget>[
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 50, right: 50),
              color: accentColor4,
              child: RaisedButton(
                child: Text('Lihat Rangkuman', style: blackTextFont),
                // onPressed: ,
                color: accentColor4,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Pada tanggal ..........................................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 5),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Pukul..................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 5),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Saya mengalami..................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 5),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Ketika itu, saya menyadari apa yang dirasakan oleh tubuh saya, yaitu............................................................................................................................................................................................................................................................................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 5),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Saya berfikir..................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 5),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Saya merasa..................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 5),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Dalam situasi seperti ini, biasanya saya melakukan......................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 35),
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 50, right: 50),
          child: RaisedButton(
            child: Text('Selesai',
                style: whiteTextFont.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400)),
            color: mainColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: () {
              context.bloc<PageBloc>().add(GoToTahukahPageOne());
            },
          ),
        ),
        SizedBox(height: 50),
      ])
    ]));
  }
}
