part of '../pages.dart';

class PerkataanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(color: accentColor4),
      SafeArea(
          child: Container(
        color: Color(0xFFFFFFFF),
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
                child: Text('Perkataan', style: blackTextFont),
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
                      'Sebagai seorang teman baik, apa yang akan Anda katakan kepada teman Anda?\nTuliskan seolah-olah Anda benar-benar mengatakannya kepada teman Anda.',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.left,
                      style: blackTextFont.copyWith(fontSize: 14)),
                ),
                SizedBox(height: 15),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Bubble(
              margin: BubbleEdges.only(right: 150),
              alignment: Alignment.topLeft,
              nipWidth: 30,
              nipHeight: 10,
              nip: BubbleNip.rightBottom,
              color: accentColor2,
              child: Text(
                  'Berusaha menenangkan teman dan mencarikan jalan keluar',
                  style: blackTextFont.copyWith(fontSize: 14),
                  textAlign: TextAlign.left),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(bottom: 10, top: 5, right: 80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/perkataan.png"))),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 50),
                Text('Teman yang sedang\ndalam kesulitan',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.left,
                    style: blackTextFont.copyWith(fontSize: 14)),
                SizedBox(width: 20),
                Text('Anda, seorang\nteman yang baik',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.left,
                    style: blackTextFont.copyWith(fontSize: 14)),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
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
