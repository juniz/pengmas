part of 'pages.dart';

class Home_screenWidget extends StatelessWidget {
  final Function onTap;
  final String nama;
  const Home_screenWidget(this.nama, {Key key, this.onTap});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Home_screenWidget - FRAME
    return Container(
        width: 411,
        height: 731,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          color: Color.fromRGBO(255, 255, 255, 1),
          border: Border.all(
            color: Color.fromRGBO(255, 255, 255, 1),
            width: 1,
          ),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 178,
              left: -21,
              child: Container(
                  width: 446,
                  height: 628,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(239, 239, 239, 1),
                  ))),
          Positioned(
              top: -137,
              left: 0,
              child: Container(
                  width: 411,
                  height: 301,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55),
                      bottomLeft: Radius.circular(55),
                      bottomRight: Radius.circular(55),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(197, 211, 253, 1),
                  ))),
          Positioned(
              top: 81,
              left: 0,
              child: Container(
                  width: 329,
                  height: 353,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 65,
                        child: Container(
                            width: 264,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 10,
                        left: 109,
                        child: Text(
                          'Cari',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 10,
                        left: 79,
                        child: Container(
                            width: 26,
                            height: 29,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Icons8search481.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 308,
                        left: 0,
                        child: Text(
                          'Modul 2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 36,
              left: 35,
              child: Text(
                'Halo, Yuk Kita Belajar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 26,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 207,
              left: 27,
              child: Container(
                  width: 350,
                  height: 158,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 103,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Imagenewtodo.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 69,
                        left: 0,
                        child: Container(
                            width: 350,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(229, 229, 229, 0.5),
                            ))),
                    Positioned(
                        top: 76,
                        left: 15,
                        child: Text(
                          'news for today',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 127,
                        left: 0,
                        child: Text(
                          'Recent Activity',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}
