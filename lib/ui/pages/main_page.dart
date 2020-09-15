part of 'pages.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int bottomNavBarIndex;
  PageController pageController;
  String email;
  String nama;
  void getFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (this.mounted) {
      setState(() {
        nama = prefs.getString("nama");
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getFromSharedPreferences();
    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(color: accentColor4),
          SafeArea(
              child: Container(
            color: Color(0xFFF6F7F9),
          )),
          PageView(
            controller: pageController,
            children: <Widget>[
              UserAccount(nama),
              NoteHomePage(),
              GoalsPage(),
            ],
            onPageChanged: (index) {
              setState(() {
                bottomNavBarIndex = index;
              });
            },
          ),
          createCustomBottomNavBar(),
        ],
      ),
    );
  }

  Widget createCustomBottomNavBar() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: accentColor4,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: mainColor,
              unselectedItemColor: Color(0xFFE5E5E5),
              currentIndex: bottomNavBarIndex,
              onTap: (index) {
                setState(() {
                  bottomNavBarIndex = index;
                  pageController.jumpToPage(index);
                });
              },
              items: [
                BottomNavigationBarItem(
                    title: Text("Beranda",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      height: 20,
                      child: Image.asset((bottomNavBarIndex == 0)
                          ? "assets/images/home.png"
                          : "assets/images/home_inactive.png"),
                    )),
                BottomNavigationBarItem(
                    title: Text("Catatan",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      height: 20,
                      child: Image.asset((bottomNavBarIndex == 1)
                          ? "assets/images/notes.png"
                          : "assets/images/notes_inactive.png"),
                    )),
                BottomNavigationBarItem(
                    title: Text("Agenda",
                        style: GoogleFonts.raleway(
                            fontSize: 13, fontWeight: FontWeight.w600)),
                    icon: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      height: 20,
                      child: Image.asset((bottomNavBarIndex == 2)
                          ? "assets/images/book.png"
                          : "assets/images/book_inactive.png"),
                    ))
              ]),
        ),
      );
}
