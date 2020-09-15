part of 'pages.dart';

void main() => runApp(GoalsPage());

class GoalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    TabBar MyTab = TabBar(
      indicator: BoxDecoration(
          color: accentColor4,
          border: Border(
            bottom: BorderSide(color: mainColor, width: 3),
          )),
      tabs: <Widget>[
        Tab(
          text: "Class",
        ),
        Tab(
          text: "Ongoing",
        ),
        Tab(
          text: "Finally",
        ),
      ],
    );

    return MaterialApp(
      home: WillPopScope(
        onWillPop: () {
          context.bloc<PageBloc>().add(GoToMainPage());

          return;
        },
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Text("Weekly Task",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                backgroundColor: accentColor4,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(MyTab.preferredSize.height),
                    child: Container(
                      child: MyTab,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    )),
              ),
              body: TabBarView(
                children: <Widget>[
                  ProductPage(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Modul kedua"),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Modul pertama"),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
