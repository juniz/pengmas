part of 'pages.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF5036D5) : Color(0xFF2C1F63),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Colors.white,
                  Colors.white54,
                  Colors.white30,
                  Colors.white12,
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 600.0,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                  child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding0.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              )),
                              SizedBox(height: 15.0),
                              Text(
                                'Learn Something New\nToday and Tomorrow . .',
                                style: purpleTextFont.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: purpleTextFont.copyWith(fontSize: 16),
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                  alignment: Alignment.center,
                                  child: FlatButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease);
                                      },
                                      child: Text(
                                        'Skip',
                                        style: TextStyle(
                                            color: accentColor1,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600),
                                      ))),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                  child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding1.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              )),
                              SizedBox(height: 15.0),
                              Text(
                                'Live your life smarter\nwith us!',
                                style: purpleTextFont.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: purpleTextFont.copyWith(fontSize: 16),
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                  alignment: Alignment.center,
                                  child: FlatButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease);
                                      },
                                      child: Text(
                                        'Skip',
                                        style: TextStyle(
                                            color: accentColor1,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600),
                                      ))),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                  child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding2.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              )),
                              SizedBox(height: 15.0),
                              Text(
                                'Get a new experience\nof imagination',
                                style: purpleTextFont.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: purpleTextFont.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 15.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ],
              ),
            ),
          )),
      bottomSheet: _currentPage == _numPages - 1
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250,
                  height: 50,
                  margin: EdgeInsets.only(top: 15, bottom: 40),
                  child: RaisedButton(
                    child: Text('Mulai',
                        style: whiteTextFont.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      context.bloc<PageBloc>().add(GoToLoginPage());
                    },
                  ),
                ),
              ],
            )
          : Text(''),
    );
  }
}
