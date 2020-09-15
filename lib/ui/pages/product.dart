part of 'pages.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final String sUrl = "https://jsonplaceholder.typicode.com/";
  List<ProductModel> listproduct;
  final Function onTap;

  _ProductPageState({this.onTap});

  @override
  void initState() {
    super.initState();
  }

  Future<List<ProductModel>> _fetchData() async {
    var params = "posts";
    try {
      var jsonResponse = await http.get(sUrl + params);
      if (jsonResponse.statusCode == 200) {
        final jsonItems =
            json.decode(jsonResponse.body).cast<Map<String, dynamic>>();

        listproduct = jsonItems.map<ProductModel>((json) {
          return ProductModel.fromJson(json);
        }).toList();
      }
    } catch (e) {}
    return listproduct;
  }

  Future<Null> _refresh() {
    return _fetchData().then((_listproduct) {
      setState(() => listproduct = _listproduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder<List<ProductModel>>(
          future: _fetchData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              // List<ProductModel> materi = _data.title.sublist(0, 4);
              return Padding(
                padding: EdgeInsets.only(top: 100, bottom: 40),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: SpinKitFadingCircle(
                    color: mainColor,
                  ),
                ),
              );
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return DetailProduct();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(6, 8, 6, 0),
                child: Column(
                  // padding: EdgeInsets.only(bottom: 10.0),
                  children: snapshot.data
                      .map(
                        (_data) => Column(children: <Widget>[
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: accentColor4,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: ListTile(
                                    leading: Icon(Icons.book, size: 50),
                                    title: Text(
                                      _data.title,
                                      style: purpleTextFont,
                                      maxLines: 2,
                                    ),
                                    // subtitle: Text(_data.userId),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      )
                      .toList()
                      .sublist(0, 6),
                ),
              ),
            );
          },
        ),
      ),
      SizedBox(
        height: 200,
      )
    ]);
  }
}
