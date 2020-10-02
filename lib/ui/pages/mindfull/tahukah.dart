part of '../pages.dart';

class TahukahPage extends StatelessWidget {
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
              child: Text('Tahukah Anda?',
                  style: blackTextFont.copyWith(fontSize: 20)),
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 5, defaultMargin, 5),
                  child: Text(
                      'Ketika mengalami stres, pikiran akan langsung bekerja untuk membuat berbagai rencana tindakan.\nKetika Anda bertindak dengan terburu-buru, Anda mungkin akan menyesali tindakan Anda di kemudian hari.\nSebaliknya, ketika Anda tidak segera bertindak, Anda mungkin akan merasa bersalah.\nKetika Anda menyadari stres yang dialami, beri jeda 3 tarikan nafas, sambil mengamati bagaimana pikiran Anda bekerja dalam situasi stres.\nSadari berbagai pikiran dan perasaan negatif yang muncul, kemudian ingat bahwa itu hanya pikiran dan perasaan, bukan suatu kenyataan. Setelah itu, kembali pada situasi yang sedang terjadi, kemudian Anda dapat memutuskan tindakan yang baik untuk dilakukan.',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style:
                          blackTextFont.copyWith(fontSize: 16, wordSpacing: 5)),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 85),
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
              context.bloc<PageBloc>().add(GoToSuaraPageOne());
            },
          ),
        ),
        SizedBox(height: 50),
      ])
    ]));
  }
}
